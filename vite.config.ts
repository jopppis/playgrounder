import react from '@vitejs/plugin-react-swc'
import { defineConfig } from 'vite'

// https://vite.dev/config/
export default defineConfig({
  plugins: [react()],
  test: {
    globals: true,
    environment: 'jsdom',
    setupFiles: ['./src/test/setup.ts', './src/setupTests.ts'],
    coverage: {
      provider: 'v8',
      reporter: ['text', 'json', 'html'],
      exclude: ['coverage/**/*'],
    },
    include: ['src/**/*.test.{ts,tsx}'],
    deps: {
      optimizer: {
        web: {
          include: ['@testing-library/jest-dom']
        }
      }
    }
  },
})
