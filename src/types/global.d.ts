// Global type declarations

// Add Turnstile to the Window interface
declare global {
  interface Window {
    turnstile?: {
      reset: () => void;
    };
  }
}

export { };
