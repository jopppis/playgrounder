import { ChakraProvider, defaultSystem } from '@chakra-ui/react'
import { render, RenderOptions } from '@testing-library/react'
import i18next from 'i18next'
import { ReactElement } from 'react'
import { I18nextProvider } from 'react-i18next'
import { MemoryRouter } from 'react-router-dom'
import enTranslations from '../i18n/locales/en.json'
import fiTranslations from '../i18n/locales/fi.json'

// Create a mock i18n instance for tests
export const i18n = i18next.createInstance()
i18n.init({
  lng: 'en',
  resources: {
    en: {
      translation: enTranslations
    },
    fi: {
      translation: fiTranslations
    }
  }
})

const AllTheProviders = ({ children }: { children: React.ReactNode }) => {
  return (
    <MemoryRouter>
      <I18nextProvider i18n={i18n}>
        <ChakraProvider value={defaultSystem}>{children}</ChakraProvider>
      </I18nextProvider>
    </MemoryRouter>
  )
}

const customRender = (
  ui: ReactElement,
  options?: Omit<RenderOptions, 'wrapper'>
) => render(ui, { wrapper: AllTheProviders, ...options })

// re-export everything
export * from '@testing-library/react'
export { customRender as render }
