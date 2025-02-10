
export const Collapse = ({ children, in: isOpen, ...props }: any) => {
  if (!isOpen) return null
  return <div data-testid="Collapse" {...props}>{children}</div>
}
