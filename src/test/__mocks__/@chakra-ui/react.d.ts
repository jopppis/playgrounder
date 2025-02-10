import React from 'react'

interface ChakraProps {
  children?: React.ReactNode
  spacing?: number
  align?: string
  p?: number
  bg?: string
  width?: string
  onClick?: () => void
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
  justifyContent?: string
  borderWidth?: string
  borderColor?: string
  borderRadius?: string
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
  size?: string
  variant?: string
  disabled?: boolean
  isDisabled?: boolean
  leftIcon?: React.ReactNode
  icon?: React.ReactNode
  as?: string
  href?: string
  target?: string
  rel?: string
  _hover?: Record<string, unknown>
  _active?: Record<string, unknown>
  _focus?: Record<string, unknown>
}

export declare const Box: React.FC<ChakraProps>
export declare const Button: React.FC<ChakraProps>
export declare const Flex: React.FC<ChakraProps>
export declare const Grid: React.FC<ChakraProps>
export declare const GridItem: React.FC<ChakraProps>
export declare const HStack: React.FC<ChakraProps>
export declare const Icon: React.FC<ChakraProps>
export declare const Input: React.FC<ChakraProps>
export declare const Stack: React.FC<ChakraProps>
export declare const Text: React.FC<ChakraProps>
export declare const VStack: React.FC<ChakraProps>
