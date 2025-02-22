"use client"

import {
    Toaster as ChakraToaster,
    Portal,
    Spinner,
    Stack,
    Toast,
    createToaster,
} from "@chakra-ui/react"

export const toaster = createToaster({
  placement: "bottom-end",
  pauseOnPageIdle: true,
})

export const Toaster = () => {
  return (
    <Portal>
      <ChakraToaster toaster={toaster} insetInline={{ mdDown: "4" }}>
        {(toast) => (
          <Toast.Root
            width={{ md: "sm" }}
            bg={toast.type === 'info' ? 'brand.500' : undefined}
            color={toast.type === 'info' ? 'white' : undefined}
          >
            {toast.type === "loading" ? (
              <Spinner size="sm" color="blue.solid" />
            ) : (
              <Toast.Indicator />
            )}
            <Stack gap="1" flex="1" maxWidth="100%">
              {toast.title && <Toast.Title>{toast.title}</Toast.Title>}
              {toast.description && (
                <Toast.Description>{toast.description}</Toast.Description>
              )}
            </Stack>
            {toast.action && (
              <Toast.ActionTrigger>{toast.action.label}</Toast.ActionTrigger>
            )}
            {toast.meta?.closable && (
              <Toast.CloseTrigger
                color="inherit"
                opacity={0.5}
                _hover={{ opacity: 1 }}
                transition="opacity 0.2s"
              />
            )}
          </Toast.Root>
        )}
      </ChakraToaster>
    </Portal>
  )
}
