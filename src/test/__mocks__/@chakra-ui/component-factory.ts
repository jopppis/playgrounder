import React from 'react';

// A simple factory function to create mock components with consistent data-testid attributes
export function createComponent<P>(
  displayName: string,
  render: (props: P) => React.ReactElement | null
): React.FC<P> {
  const Component = (props: P) => render(props);
  Component.displayName = displayName;
  return Component;
}
