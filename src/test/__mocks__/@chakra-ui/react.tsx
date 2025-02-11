import type { ReactNode } from 'react'

// Mock components with proper types
interface ChakraProps {
  children?: ReactNode
  onClick?: () => void
  'aria-label'?: string
  isOpen?: boolean
  [key: string]: unknown
}

// Component factory to avoid React hooks warning
const createComponent = (name: string, render: (props: ChakraProps) => JSX.Element | null) => {
  const Component = (props: ChakraProps) => render(props)
  Component.displayName = name
  return Component
}

// Basic components
export const Button = createComponent('Button', ({ children, onClick, ...props }) => (
  <button onClick={onClick} {...props}>{children}</button>
))

export const IconButton = createComponent('IconButton', ({ 'aria-label': ariaLabel, onClick, ...props }) => (
  <button aria-label={ariaLabel} onClick={onClick} {...props}>
    {ariaLabel}
  </button>
))

// Modal components
export const Modal = createComponent('Modal', ({ children, isOpen, ...props }) => {
  if (!isOpen) return null
  return <div data-testid="modal" {...props}>{children}</div>
})

export const ModalOverlay = createComponent('ModalOverlay', (props) => <div data-testid="modal-overlay" {...props} />)
export const ModalContent = createComponent('ModalContent', ({ children, ...props }) => <div data-testid="modal-content" {...props}>{children}</div>)
export const ModalHeader = createComponent('ModalHeader', ({ children, ...props }) => <div data-testid="modal-header" {...props}>{children}</div>)
export const ModalBody = createComponent('ModalBody', ({ children, ...props }) => <div data-testid="modal-body" {...props}>{children}</div>)
export const ModalFooter = createComponent('ModalFooter', ({ children, ...props }) => <div data-testid="modal-footer" {...props}>{children}</div>)
export const ModalCloseButton = createComponent('ModalCloseButton', (props) => <button data-testid="modal-close" {...props}>×</button>)

// Drawer components
export const Drawer = createComponent('Drawer', ({ children, isOpen, ...props }) => {
  if (!isOpen) return null
  return <div data-testid="drawer" {...props}>{children}</div>
})

export const DrawerOverlay = createComponent('DrawerOverlay', (props) => <div data-testid="drawer-overlay" {...props} />)
export const DrawerContent = createComponent('DrawerContent', ({ children, ...props }) => <div data-testid="drawer-content" {...props}>{children}</div>)
export const DrawerHeader = createComponent('DrawerHeader', ({ children, ...props }) => <div data-testid="drawer-header" {...props}>{children}</div>)
export const DrawerBody = createComponent('DrawerBody', ({ children, ...props }) => <div data-testid="drawer-body" {...props}>{children}</div>)
export const DrawerFooter = createComponent('DrawerFooter', ({ children, ...props }) => <div data-testid="drawer-footer" {...props}>{children}</div>)
export const DrawerCloseButton = createComponent('DrawerCloseButton', (props) => <button data-testid="drawer-close" {...props}>×</button>)

// Layout components
const StyledComponent = createComponent('StyledComponent', ({ children, ...props }) => (
  <div {...props}>{children}</div>
))

export const Box = StyledComponent
export const Flex = StyledComponent
export const Stack = StyledComponent
export const Text = StyledComponent
export const VStack = StyledComponent
export const HStack = StyledComponent
export const Container = StyledComponent
export const Center = StyledComponent
export const Spinner = StyledComponent

// Export hooks from a separate file to avoid fast-refresh warning
export { useDisclosure } from './hooks.js'
