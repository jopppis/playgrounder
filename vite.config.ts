import react from '@vitejs/plugin-react-swc'
import { defineConfig } from 'vite'
import { version } from './package.json'

// https://vite.dev/config/
export default defineConfig({
  plugins: [react()],
  define: {
    'import.meta.env.APP_VERSION': JSON.stringify(version)
  },
  build: {
    rollupOptions: {
      output: {
        manualChunks: {
          'react-vendor': ['react', 'react-dom', 'react-router-dom'],
          'chakra': ['@chakra-ui/react', '@chakra-ui/switch', '@chakra-ui/transition', 'framer-motion'],
          'map': ['leaflet', 'react-leaflet'],
          'supabase': ['@supabase/supabase-js']
        }
      }
    }
  },
  test: {
    globals: true,
    environment: 'jsdom',
    setupFiles: ['./src/test/setup.ts', './src/setupTests.ts'],
    coverage: {
      provider: 'v8',
      reporter: ['text', 'json', 'html'],
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
