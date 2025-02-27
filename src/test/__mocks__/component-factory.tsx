import { ReactElement, ReactNode } from 'react'

// Mock components with proper types
export interface ChakraProps {
  children?: ReactNode
  onClick?: () => void
  'aria-label'?: string
  isOpen?: boolean
  [key: string]: unknown
}

// Component factory to avoid React hooks warning
export const createComponent = (name: string, render: (props: ChakraProps) => ReactElement | null) => {
  const Component = (props: ChakraProps) => render(props)
  Component.displayName = name
  return Component
}
