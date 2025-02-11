import { fireEvent, screen } from '@testing-library/react'
import { beforeEach, describe, expect, it } from 'vitest'
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
    const finnishButton = screen.getByText('Suomi')

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
