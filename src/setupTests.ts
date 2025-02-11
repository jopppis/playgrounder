import '@testing-library/jest-dom/vitest'
import type { TestingLibraryMatchers } from '@testing-library/jest-dom/matchers'
import { vi } from 'vitest'

type CustomMatchers<R = unknown> = TestingLibraryMatchers<typeof expect.stringContaining, R>

declare module 'vitest' {
  interface Assertion<T> extends CustomMatchers<T> {
    toBeDefined(): void;
  }
  interface AsymmetricMatchersContaining extends CustomMatchers<unknown> {
    toBeDefined(): void;
  }
}

// Configure longer timeout for async operations
vi.setConfig({ testTimeout: 5000 })

// Add TextEncoder polyfill
if (typeof TextEncoder === 'undefined') {
  class TextEncoderPolyfill {
    encode(str: string): Uint8Array {
      const arr = new Uint8Array(str.length)
      for (let i = 0; i < str.length; i++) {
        arr[i] = str.charCodeAt(i)
      }
      return arr
    }
  }
  ;(globalThis as { TextEncoder: typeof TextEncoderPolyfill }).TextEncoder = TextEncoderPolyfill
}

if (typeof TextDecoder === 'undefined') {
  class TextDecoderPolyfill {
    decode(arr: Uint8Array): string {
      return String.fromCharCode.apply(null, Array.from(arr))
    }
  }
  ;(globalThis as { TextDecoder: typeof TextDecoderPolyfill }).TextDecoder = TextDecoderPolyfill
}

// Extend global types
declare global {
  interface TextEncoder {
    encode(str: string): Uint8Array
  }
  interface TextDecoder {
    decode(arr: Uint8Array): string
  }
  interface Process {
    env: Record<string, string>
  }
  interface Window {
    matchMedia: (query: string) => MediaQueryList
  }
}

interface MediaQueryList {
  matches: boolean
  media: string
  onchange: null
  addListener: (listener: () => void) => void
  removeListener: (listener: () => void) => void
  addEventListener: (type: string, listener: () => void) => void
  removeEventListener: (type: string, listener: () => void) => void
  dispatchEvent: (event: Event) => boolean
}

// Mock matchMedia if it's not available in jsdom
Object.defineProperty(window, 'matchMedia', {
  writable: true,
  value: vi.fn().mockImplementation((query: string): MediaQueryList => ({
    matches: false,
    media: query,
    onchange: null,
    addListener: vi.fn(),
    removeListener: vi.fn(),
    addEventListener: vi.fn(),
    removeEventListener: vi.fn(),
    dispatchEvent: vi.fn(),
  })),
})

// Export empty object to make this a module
export {}
