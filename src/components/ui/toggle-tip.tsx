import { Popover as ChakraPopover, IconButton, Portal } from "@chakra-ui/react"
import * as React from "react"
import { HiOutlineInformationCircle } from "react-icons/hi"

export interface ToggleTipProps extends ChakraPopover.RootProps {
  showArrow?: boolean
  portalled?: boolean
  portalRef?: React.RefObject<HTMLElement>
  content?: React.ReactNode
}

export interface InfoTipProps extends Partial<ToggleTipProps> {
  colorPalette?: string
}

export const ToggleTip = React.forwardRef<HTMLDivElement, ToggleTipProps>(
  function ToggleTip(props, ref) {
    const {
      showArrow,
      children,
      portalled = true,
      content,
      portalRef,
      ...rest
    } = props

    return (
      <ChakraPopover.Root
        {...rest}
        positioning={{ ...rest.positioning, gutter: 4 }}
      >
        <ChakraPopover.Trigger asChild>{children}</ChakraPopover.Trigger>
        <Portal disabled={!portalled} container={portalRef}>
          <ChakraPopover.Positioner>
            <ChakraPopover.Content
              width="200px"
              maxWidth="300px"
              px="2"
              py="1"
              textStyle="xs"
              rounded="sm"
              ref={ref}
              bg="white"
              color="gray.700"
              lineHeight="1.4"
            >
              {showArrow && (
                <ChakraPopover.Arrow>
                  <ChakraPopover.ArrowTip />
                </ChakraPopover.Arrow>
              )}
              {content}
            </ChakraPopover.Content>
          </ChakraPopover.Positioner>
        </Portal>
      </ChakraPopover.Root>
    )
  },
)

export const InfoTip = React.forwardRef<
  HTMLDivElement,
  InfoTipProps
>(function InfoTip(props, ref) {
  const { children, colorPalette = "gray", ...rest } = props
  return (
    <ToggleTip
      content={children}
      {...rest}
      ref={ref}
    >
      <IconButton
        variant="ghost"
        aria-label="info"
        size="2xs"
        color={`${colorPalette}.500`}
        bg="transparent"
        _hover={{ bg: "transparent" }}
      >
        <HiOutlineInformationCircle />
      </IconButton>
    </ToggleTip>
  )
})
