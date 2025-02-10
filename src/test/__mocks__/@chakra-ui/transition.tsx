import React from 'react'

interface TransitionProps {
  children?: React.ReactNode
  in?: boolean
  unmountOnExit?: boolean
  [key: string]: React.ReactNode | boolean | undefined
}

export const Collapse = ({ children }: TransitionProps) => <div>{children}</div>
export const Fade = ({ children }: TransitionProps) => <div>{children}</div>
export const ScaleFade = ({ children }: TransitionProps) => <div>{children}</div>
export const Slide = ({ children }: TransitionProps) => <div>{children}</div>
export const SlideFade = ({ children }: TransitionProps) => <div>{children}</div>
