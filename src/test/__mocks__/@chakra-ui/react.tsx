import React from 'react'

interface ChakraProps {
  children?: React.ReactNode
  spacing?: number
  align?: string
  p?: number
  bg?: string
  width?: string
  onClick?: (event: React.MouseEvent<any>) => void
  'data-testid'?: string
  style?: React.CSSProperties
  className?: string
  role?: string
  id?: string
  title?: string
  tabIndex?: number
  onKeyDown?: (event: React.KeyboardEvent) => void
  onKeyUp?: (event: React.KeyboardEvent) => void
  onMouseDown?: (event: React.MouseEvent) => void
  onMouseUp?: (event: React.MouseEvent) => void
  onFocus?: (event: React.FocusEvent) => void
  onBlur?: (event: React.FocusEvent) => void
  onMouseEnter?: (event: React.MouseEvent) => void
  onMouseLeave?: (event: React.MouseEvent) => void
  gap?: number
  direction?: string
  h?: string
  w?: string
  minW?: string
  maxW?: string
  minH?: string
  maxH?: string
  flex?: number | string
  flexDirection?: string
  alignItems?: string
  alignSelf?: string
  justifyContent?: string
  justify?: string
  borderWidth?: string
  borderColor?: string
  borderRadius?: string
  border?: string
  borderTop?: string
  borderLeft?: string
  borderBottomWidth?: string
  boxShadow?: string
  position?: string
  top?: number | string
  right?: number | string
  bottom?: number | string
  left?: number | string
  zIndex?: number
  color?: string
  fontSize?: string
  fontWeight?: string
  textAlign?: string
  mb?: number | string
  mt?: number | string
  my?: number | string
  mx?: number | string
  px?: number | string
  py?: number | string
  pt?: number | string
  pb?: number | string
  pl?: number | string
  pr?: number | string
  mr?: number | string
  size?: string
  variant?: string
  disabled?: boolean
  isDisabled?: boolean
  leftIcon?: React.ReactNode
  icon?: React.ReactNode
  as?: any
  href?: string
  target?: string
  rel?: string
  _hover?: Record<string, unknown>
  _active?: Record<string, unknown>
  _focus?: Record<string, unknown>
  display?: string
  height?: string
  lineHeight?: string
  whiteSpace?: string
  transition?: string
  opacity?: number
  ref?: React.RefObject<any>
  cursor?: string
  templateColumns?: string
  boxSize?: number | string
  outline?: string
}

const createChakraMock = (displayName: string) => {
  const component = ({ children, ...props }: ChakraProps) => {
    const [isHovered, setIsHovered] = React.useState(false)

    // Convert Chakra style props to CSS style object
    const chakraPropsToStyle = {
      minW: props.minW ? { minWidth: props.minW } : {},
      maxW: props.maxW ? { maxWidth: props.maxW } : {},
      minH: props.minH ? { minHeight: props.minH } : {},
      maxH: props.maxH ? { maxHeight: props.maxH } : {},
      alignItems: props.alignItems ? { alignItems: props.alignItems } : {},
      justifyContent: props.justifyContent ? { justifyContent: props.justifyContent } : {},
      borderColor: props.borderColor ? { borderColor: props.borderColor } : {},
      borderRadius: props.borderRadius ? { borderRadius: props.borderRadius } : {},
      borderTop: props.borderTop ? { borderTop: props.borderTop } : {},
      boxShadow: props.boxShadow ? { boxShadow: props.boxShadow } : {},
      zIndex: props.zIndex !== undefined ? { zIndex: props.zIndex } : {},
      lineHeight: props.lineHeight ? { lineHeight: props.lineHeight } : {},
      whiteSpace: props.whiteSpace ? { whiteSpace: props.whiteSpace } : {}
    }

    const combinedStyle = {
      ...Object.assign({}, ...Object.values(chakraPropsToStyle)),
      ...props.style,
      opacity: isHovered && props._hover?.opacity !== undefined ? Number(props._hover.opacity) : props.opacity !== undefined ? Number(props.opacity) : undefined
    }

    // Remove Chakra-specific props that we've converted to style
    const {
      minW, maxW, minH, maxH, alignItems, justifyContent,
      borderColor, borderRadius, borderTop, boxShadow,
      zIndex, lineHeight, whiteSpace,
      _hover, _active, _focus,
      ...restProps
    } = props

    const componentProps = {
      ...restProps,
      style: combinedStyle,
      onMouseEnter: (e: React.MouseEvent) => {
        setIsHovered(true)
        props.onMouseEnter?.(e)
      },
      onMouseLeave: (e: React.MouseEvent) => {
        setIsHovered(false)
        props.onMouseLeave?.(e)
      }
    }

    // Add role="status" for Spinner component
    if (displayName === 'Spinner') {
      componentProps.role = 'status'
    }

    return (
      <div data-testid={displayName} {...componentProps}>{children}</div>
    )
  }
  component.displayName = displayName
  return component
}

export const Box = createChakraMock('Box')
export const Button = createChakraMock('Button')
export const Flex = createChakraMock('Flex')
export const Grid = createChakraMock('Grid')
export const GridItem = createChakraMock('GridItem')
export const HStack = createChakraMock('HStack')
export const Icon = createChakraMock('Icon')
export const Input = createChakraMock('Input')
export const Stack = createChakraMock('Stack')
export const Text = createChakraMock('Text')
export const VStack = createChakraMock('VStack')
export const Spinner = createChakraMock('Spinner')
