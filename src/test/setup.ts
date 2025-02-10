import '@testing-library/jest-dom'
import type { TestingLibraryMatchers } from '@testing-library/jest-dom/matchers'

declare global {
  namespace jest {
    interface Matchers<R> extends TestingLibraryMatchers<typeof expect.stringContaining, R> {}
  }
}

// Add TextEncoder polyfill
class TextEncoderPolyfill {
  encode(str: string): Uint8Array {
    const arr = new Uint8Array(str.length)
    for (let i = 0; i < str.length; i++) {
      arr[i] = str.charCodeAt(i)
    }
    return arr
  }
}

class TextDecoderPolyfill {
  decode(arr: Uint8Array): string {
    return String.fromCharCode.apply(null, Array.from(arr))
  }
}

if (typeof TextEncoder === 'undefined') {
  global.TextEncoder = TextEncoderPolyfill as any
}

if (typeof TextDecoder === 'undefined') {
  global.TextDecoder = TextDecoderPolyfill as any
}

export {}
