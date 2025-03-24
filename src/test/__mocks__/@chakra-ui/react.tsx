/* eslint-disable react-refresh/only-export-components */
import React from 'react';
import { createComponent } from './component-factory';

// Basic components
export const Button = createComponent<{
  children?: React.ReactNode;
  onClick?: (event: React.MouseEvent<HTMLButtonElement>) => void;
  [key: string]: unknown;
}>('Button', ({ children, onClick, ...props }) => (
  <button onClick={onClick} {...props}>
    {children}
  </button>
));

export const IconButton = createComponent<{
  'aria-label': string;
  onClick?: (event: React.MouseEvent<HTMLButtonElement>) => void;
  [key: string]: unknown;
}>('IconButton', ({ 'aria-label': ariaLabel, onClick, ...props }) => (
  <button aria-label={ariaLabel} onClick={onClick} {...props}>
    {ariaLabel}
  </button>
));

// Modal components
export const Modal = createComponent<{
  children?: React.ReactNode;
  isOpen?: boolean;
  [key: string]: unknown;
}>('Modal', ({ children, isOpen, ...props }) => {
  if (!isOpen) return null;
  return (
    <div data-testid="modal" {...props}>
      {children}
    </div>
  );
});

export const ModalOverlay = createComponent<React.HTMLAttributes<HTMLDivElement>>(
  'ModalOverlay',
  (props) => <div data-testid="modal-overlay" {...props} />,
);
export const ModalContent = createComponent<{
  children?: React.ReactNode;
  [key: string]: unknown;
}>('ModalContent', ({ children, ...props }) => (
  <div data-testid="modal-content" {...props}>
    {children}
  </div>
));
export const ModalHeader = createComponent<{
  children?: React.ReactNode;
  [key: string]: unknown;
}>('ModalHeader', ({ children, ...props }) => (
  <div data-testid="modal-header" {...props}>
    {children}
  </div>
));
export const ModalBody = createComponent<{
  children?: React.ReactNode;
  [key: string]: unknown;
}>('ModalBody', ({ children, ...props }) => (
  <div data-testid="modal-body" {...props}>
    {children}
  </div>
));
export const ModalFooter = createComponent<{
  children?: React.ReactNode;
  [key: string]: unknown;
}>('ModalFooter', ({ children, ...props }) => (
  <div data-testid="modal-footer" {...props}>
    {children}
  </div>
));
export const ModalCloseButton = createComponent<React.ButtonHTMLAttributes<HTMLButtonElement>>(
  'ModalCloseButton',
  (props) => (
    <button data-testid="modal-close" {...props}>
      ×
    </button>
  ),
);

// Drawer components
export const Drawer = createComponent<{
  children?: React.ReactNode;
  isOpen?: boolean;
  [key: string]: unknown;
}>('Drawer', ({ children, isOpen, ...props }) => {
  if (!isOpen) return null;
  return (
    <div data-testid="drawer" {...props}>
      {children}
    </div>
  );
});

export const DrawerOverlay = createComponent<React.HTMLAttributes<HTMLDivElement>>(
  'DrawerOverlay',
  (props) => <div data-testid="drawer-overlay" {...props} />,
);
export const DrawerContent = createComponent<{
  children?: React.ReactNode;
  [key: string]: unknown;
}>('DrawerContent', ({ children, ...props }) => (
  <div data-testid="drawer-content" {...props}>
    {children}
  </div>
));
export const DrawerHeader = createComponent<{
  children?: React.ReactNode;
  [key: string]: unknown;
}>('DrawerHeader', ({ children, ...props }) => (
  <div data-testid="drawer-header" {...props}>
    {children}
  </div>
));
export const DrawerBody = createComponent<{
  children?: React.ReactNode;
  [key: string]: unknown;
}>('DrawerBody', ({ children, ...props }) => (
  <div data-testid="drawer-body" {...props}>
    {children}
  </div>
));
export const DrawerFooter = createComponent<{
  children?: React.ReactNode;
  [key: string]: unknown;
}>('DrawerFooter', ({ children, ...props }) => (
  <div data-testid="drawer-footer" {...props}>
    {children}
  </div>
));
export const DrawerCloseButton = createComponent<React.ButtonHTMLAttributes<HTMLButtonElement>>(
  'DrawerCloseButton',
  (props) => (
    <button data-testid="drawer-close" {...props}>
      ×
    </button>
  ),
);

// Re-export layout components
export * from './layout-components';

// Re-export hooks
export * from './hooks-exports';
