/** @jsx React.createElement */
import { createComponent } from './component-factory'

// Using JSX directly instead of createElement
export const StyledComponent = createComponent('StyledComponent', ({ children, ...props }) => (
  <div {...props}>{children}</div>
))
