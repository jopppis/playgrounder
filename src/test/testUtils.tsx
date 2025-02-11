import { ChakraProvider, defaultSystem } from '@chakra-ui/react'
import { render, RenderOptions } from '@testing-library/react'
import i18next from 'i18next'
import { ReactElement } from 'react'
import { I18nextProvider } from 'react-i18next'
import { MemoryRouter } from 'react-router-dom'
import { EmotionCacheProvider } from './emotionSetup'

// Create a mock i18n instance for tests
export const i18n = i18next.createInstance()
i18n.init({
  lng: 'en',
  resources: {
    en: {
      translation: {
        'menu.title': 'Playgrounder',
        'menu.signIn': 'Sign In',
        'menu.signUp': 'Sign Up',
        'menu.signOut': 'Sign Out',
        'menu.settings': 'Settings',
        'menu.language': 'Language',
        'playground.loginRequired': 'Login required',
        'playground.visitMarked': 'Visit marked',
        'playground.clickToRate': 'Click to rate',
        'playground.removeVisit': 'Remove Visit',
        'playground.markVisited': 'Mark Visited',
        'playground.rating': 'Rating',
        'playground.makePublic': 'Make Public',
        'playground.serviceLevel': 'Service Level',
        'playground.level1': 'Level 1',
        'playground.level2': 'Level 2',
        'common.error': 'Error',
        'common.unknownError': 'Unknown error',
        filterPlaygrounds: 'Filter Playgrounds',
        visitStatus: 'Visit Status',
        visited: 'Visited',
        unvisited: 'Unvisited',
        minStars: 'Minimum Stars',
        showMore: 'Show More',
        showLess: 'Show Less'
      }
    },
    fi: {
      translation: {
        'menu.title': 'Playgrounder',
        'menu.signIn': 'Kirjaudu sisään',
        'menu.signUp': 'Rekisteröidy',
        'menu.signOut': 'Kirjaudu ulos',
        'menu.settings': 'Asetukset',
        'menu.language': 'Kieli'
      }
    }
  }
})

const AllTheProviders = ({ children }: { children: React.ReactNode }) => {
  return (
    <MemoryRouter>
      <I18nextProvider i18n={i18n}>
        <EmotionCacheProvider>
          <ChakraProvider value={defaultSystem}>{children}</ChakraProvider>
        </EmotionCacheProvider>
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
