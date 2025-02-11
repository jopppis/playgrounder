/// <reference types="@testing-library/jest-dom" />
import { fireEvent, render, screen } from '@testing-library/react'
import i18next from 'i18next'
import { I18nextProvider } from 'react-i18next'
import LanguageSwitcher from './LanguageSwitcher'

// Create a mock i18n instance
const i18n = i18next.createInstance()
i18n.init({
  lng: 'en',
  resources: {
    en: {
      translation: {
        'menu.language': 'Language'
      }
    },
    fi: {
      translation: {
        'menu.language': 'Kieli'
      }
    }
  }
})

describe('LanguageSwitcher', () => {
  const renderComponent = (): ReturnType<typeof render> => {
    return render(
      <I18nextProvider i18n={i18n}>
        <LanguageSwitcher />
      </I18nextProvider>
    )
  }

  beforeEach(() => {
    i18n.changeLanguage('en')
  })

  it('renders language options', () => {
    renderComponent()
    expect(screen.getByText('Language')).toBeInTheDocument()
    expect(screen.getByText('English')).toBeInTheDocument()
    expect(screen.getByText('Suomi')).toBeInTheDocument()
  })

  it('shows English as active when English is selected', () => {
    renderComponent()
    const englishButton = screen.getByText('English')
    const finnishButton = screen.getByText('Suomi')

    expect(englishButton).toHaveStyle({ opacity: 1 })
    expect(finnishButton).toHaveStyle({ opacity: 0.5 })
  })

  it('shows Finnish as active when Finnish is selected', () => {
    i18n.changeLanguage('fi')
    renderComponent()

    const englishButton = screen.getByText('English')
    const finnishButton = screen.getByText('Suomi')

    expect(englishButton).toHaveStyle({ opacity: 0.5 })
    expect(finnishButton).toHaveStyle({ opacity: 1 })
  })

  it('changes language when clicking on language buttons', () => {
    renderComponent()

    // Change to Finnish
    fireEvent.click(screen.getByText('Suomi'))
    expect(i18n.language).toBe('fi')
    expect(screen.getByText('Kieli')).toBeInTheDocument()

    // Change back to English
    fireEvent.click(screen.getByText('English'))
    expect(i18n.language).toBe('en')
    expect(screen.getByText('Language')).toBeInTheDocument()
  })

  it('applies hover styles correctly', () => {
    renderComponent()
    const englishButton = screen.getByText('English')
    const finnishButton = screen.getByText('Suomi')

    // Both buttons should have opacity 1 on hover
    fireEvent.mouseEnter(englishButton)
    expect(englishButton).toHaveStyle({ opacity: 1 })

    fireEvent.mouseEnter(finnishButton)
    expect(finnishButton).toHaveStyle({ opacity: 1 })

    // Opacity should return to normal when not hovering
    fireEvent.mouseLeave(finnishButton)
    expect(finnishButton).toHaveStyle({ opacity: 0.5 })
  })
})
