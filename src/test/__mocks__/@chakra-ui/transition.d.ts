import React from 'react'

interface TransitionProps {
  children?: React.ReactNode
  in?: boolean
  unmountOnExit?: boolean
  [key: string]: React.ReactNode | boolean | undefined
}

export declare const Collapse: React.FC<TransitionProps>
export declare const Fade: React.FC<TransitionProps>
export declare const ScaleFade: React.FC<TransitionProps>
export declare const Slide: React.FC<TransitionProps>
export declare const SlideFade: React.FC<TransitionProps>
