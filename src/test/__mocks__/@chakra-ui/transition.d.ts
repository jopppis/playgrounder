import { ReactNode } from 'react'

export interface CollapseProps {
  children?: ReactNode
  in?: boolean
  [key: string]: any
}

export const Collapse: React.FC<CollapseProps>
