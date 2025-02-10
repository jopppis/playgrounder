import React from 'react'

interface ChakraProps {
  children?: React.ReactNode
  spacing?: number
  align?: string
  p?: number
  bg?: string
  width?: string
  onClick?: () => void
  [key: string]: any
}

const createChakraMock = (displayName: string) => {
  const component = ({ children, ...props }: ChakraProps) => (
    <div data-testid={displayName} {...props}>{children}</div>
  )
  component.displayName = displayName
  return component
}

export const Box = createChakraMock('Box')
export const Button = createChakraMock('Button')
export const HStack = createChakraMock('HStack')
export const Stack = createChakraMock('Stack')
export const Text = createChakraMock('Text')
export const VStack = createChakraMock('VStack')
