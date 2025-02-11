/// <reference types="vitest" />
import '@testing-library/jest-dom/vitest'
import type { TestingLibraryMatchers } from '@testing-library/jest-dom/matchers'
import { vi } from 'vitest'

declare module 'vitest' {
  interface Assertion<T = any> extends TestingLibraryMatchers<typeof expect.stringContaining, T> {}
}

interface Window {
  process: any
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
  ;(globalThis as any).TextEncoder = TextEncoderPolyfill
}

if (typeof TextDecoder === 'undefined') {
  class TextDecoderPolyfill {
    decode(arr: Uint8Array): string {
      return String.fromCharCode.apply(null, Array.from(arr))
    }
  }
  ;(globalThis as any).TextDecoder = TextDecoderPolyfill
}

export {}
