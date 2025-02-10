import { ReactNode } from 'react'

export interface ChakraProps {
  children?: ReactNode
  spacing?: number
  align?: string
  p?: number
  bg?: string
  width?: string
  onClick?: () => void
  [key: string]: any
}

export interface StackProps extends ChakraProps {
  spacing?: number
}

export const Box: React.FC<ChakraProps>
export const Button: React.FC<ChakraProps>
export const HStack: React.FC<StackProps>
export const Stack: React.FC<StackProps>
export const Text: React.FC<ChakraProps>
export const VStack: React.FC<StackProps>
