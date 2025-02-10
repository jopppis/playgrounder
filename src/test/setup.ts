import '@testing-library/jest-dom'
import type { TestingLibraryMatchers } from '@testing-library/jest-dom/matchers'

declare module 'expect' {
  type Matchers<R = void> = TestingLibraryMatchers<typeof expect.stringContaining, R>
}
