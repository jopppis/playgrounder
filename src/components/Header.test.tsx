/// <reference types="@testing-library/jest-dom" />
import '@testing-library/jest-dom'
import { fireEvent, render, screen } from '@testing-library/react'
import i18next from 'i18next'
import { I18nextProvider } from 'react-i18next'
import { useAuth } from '../hooks/useAuth'
import Header from './Header'

// Mock the useAuth hook
jest.mock('../hooks/useAuth', () => ({
  useAuth: jest.fn()
}))

// Create a mock i18n instance
const i18n = i18next.createInstance()
i18n.init({
  lng: 'en',
  resources: {
    en: {
      translation: {
        'menu.title': 'Playgrounder',
        'menu.signIn': 'Sign In',
        'menu.signUp': 'Sign Up',
        'menu.signOut': 'Sign Out',
        'menu.settings': 'Settings'
      }
    }
  }
})

describe('Header', () => {
  beforeEach(() => {
    jest.clearAllMocks()
    ;(useAuth as jest.Mock).mockReturnValue({ user: null })
  })

  const renderComponent = () => {
    return render(
      <I18nextProvider i18n={i18n}>
        <Header />
      </I18nextProvider>
    )
  }

  it('renders title', () => {
    renderComponent()
    expect(screen.getByText('Playgrounder')).toBeInTheDocument()
  })

  it('shows sign in and sign up buttons when user is not logged in', () => {
    renderComponent()
    expect(screen.getByText('Sign In')).toBeInTheDocument()
    expect(screen.getByText('Sign Up')).toBeInTheDocument()
    expect(screen.queryByText('Sign Out')).not.toBeInTheDocument()
  })

  it('shows sign out button when user is logged in', () => {
    ;(useAuth as jest.Mock).mockReturnValue({ user: { id: '1' } })
    renderComponent()
    expect(screen.getByText('Sign Out')).toBeInTheDocument()
    expect(screen.queryByText('Sign In')).not.toBeInTheDocument()
    expect(screen.queryByText('Sign Up')).not.toBeInTheDocument()
  })

  it('opens menu drawer when menu button is clicked', () => {
    renderComponent()
    const menuButton = screen.getByRole('button', { name: /menu/i })
    fireEvent.click(menuButton)
    expect(screen.getByText('Settings')).toBeInTheDocument()
  })

  it('closes menu drawer when clicking outside', () => {
    renderComponent()
    const menuButton = screen.getByRole('button', { name: /menu/i })
    fireEvent.click(menuButton)

    // Click outside the drawer
    fireEvent.mouseDown(document.body)

    // Settings should no longer be visible
    expect(screen.queryByText('Settings')).not.toBeInTheDocument()
  })

  it('handles sign out', () => {
    const mockSignOut = jest.fn()
    ;(useAuth as jest.Mock).mockReturnValue({
      user: { id: '1' },
      signOut: mockSignOut
    })

    renderComponent()
    const signOutButton = screen.getByText('Sign Out')
    fireEvent.click(signOutButton)
    expect(mockSignOut).toHaveBeenCalled()
  })
})
