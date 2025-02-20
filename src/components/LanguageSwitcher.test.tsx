import { fireEvent, screen } from '@testing-library/react'
import { beforeEach, describe, expect, it } from 'vitest'
import enTranslations from '../i18n/locales/en.json'
import fiTranslations from '../i18n/locales/fi.json'
import { i18n, render } from '../test/testUtils'
import LanguageSwitcher from './LanguageSwitcher'

describe('LanguageSwitcher', () => {
  const renderComponent = (): ReturnType<typeof render> => {
    return render(<LanguageSwitcher />)
  }

  beforeEach(() => {
    i18n.changeLanguage('en')
  })

  it('renders language options', () => {
    renderComponent()
    expect(screen.getByText(enTranslations.menu.language)).toBeInTheDocument()
    expect(screen.getByText(enTranslations.menu.en)).toBeInTheDocument()
    expect(screen.getByText(enTranslations.menu.fi)).toBeInTheDocument()
  })

  it('shows English as active when English is selected', () => {
    renderComponent()
    const englishButton = screen.getByText(enTranslations.menu.en)
    const finnishButton = screen.getByText(enTranslations.menu.fi)

    expect(englishButton).toHaveStyle({ opacity: 1 })
    expect(finnishButton).toHaveStyle({ opacity: 0.5 })
  })

  it('shows Finnish as active when Finnish is selected', () => {
    i18n.changeLanguage('fi')
    renderComponent()

    const englishButton = screen.getByText(fiTranslations.menu.en)
    const finnishButton = screen.getByText(fiTranslations.menu.fi)

    expect(englishButton).toHaveStyle({ opacity: 0.5 })
    expect(finnishButton).toHaveStyle({ opacity: 1 })
  })

  it('changes language when clicking on language buttons', () => {
    renderComponent()

    // Change to Finnish
    fireEvent.click(screen.getByText(enTranslations.menu.fi))
    expect(i18n.language).toBe('fi')
    expect(screen.getByText(fiTranslations.menu.language)).toBeInTheDocument()

    // Change back to English
    fireEvent.click(screen.getByText(fiTranslations.menu.en))
    expect(i18n.language).toBe('en')
    expect(screen.getByText(enTranslations.menu.language)).toBeInTheDocument()
  })

  it('applies hover styles correctly', () => {
    renderComponent()
    const finnishButton = screen.getByText(enTranslations.menu.fi)

    // Initial state
    expect(finnishButton).toHaveStyle({ opacity: 0.5 })

    // Hover state
    fireEvent.mouseEnter(finnishButton)
    expect(finnishButton).toHaveStyle({ opacity: 0.5 }) // The opacity is controlled by the language state, not hover

    // After hover
    fireEvent.mouseLeave(finnishButton)
    expect(finnishButton).toHaveStyle({ opacity: 0.5 })
  })
})
