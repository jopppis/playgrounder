import { ChakraProvider, defaultSystem } from '@chakra-ui/react'
import { ReactNode } from 'react'
import { I18nextProvider } from 'react-i18next'
import { MemoryRouter } from 'react-router-dom'
import { i18n } from './i18n-instance'

export const AllTheProviders = ({ children }: { children: ReactNode }) => {
  return (
    <MemoryRouter>
      <I18nextProvider i18n={i18n}>
        <ChakraProvider value={defaultSystem}>{children}</ChakraProvider>
      </I18nextProvider>
    </MemoryRouter>
  )
}
