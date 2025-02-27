import { createComponent } from './component-factory';

// Box component
export const Box = createComponent<React.HTMLAttributes<HTMLDivElement>>('Box', (props) =>
  <div data-testid="box" {...props} />
);

// Flex component
export const Flex = createComponent<React.HTMLAttributes<HTMLDivElement>>('Flex', (props) =>
  <div data-testid="flex" style={{ display: 'flex' }} {...props} />
);

// Stack components
export const HStack = createComponent<React.HTMLAttributes<HTMLDivElement>>('HStack', (props) =>
  <div data-testid="hstack" style={{ display: 'flex', flexDirection: 'row' }} {...props} />
);

export const VStack = createComponent<React.HTMLAttributes<HTMLDivElement>>('VStack', (props) =>
  <div data-testid="vstack" style={{ display: 'flex', flexDirection: 'column' }} {...props} />
);

// Text components
export const Text = createComponent<React.HTMLAttributes<HTMLParagraphElement>>('Text', (props) =>
  <p data-testid="text" {...props} />
);

export const Heading = createComponent<React.HTMLAttributes<HTMLHeadingElement>>('Heading', (props) =>
  <h2 data-testid="heading" {...props} />
);

// Container component
export const Container = createComponent<React.HTMLAttributes<HTMLDivElement>>('Container', (props) =>
  <div data-testid="container" {...props} />
);
