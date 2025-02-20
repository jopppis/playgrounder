import { fireEvent, screen, waitFor } from '@testing-library/react'
import { useLocation } from 'react-router-dom'
import { beforeEach, describe, expect, it, vi } from 'vitest'
import { useAuth } from '../hooks/useAuth'
import enTranslations from '../i18n/locales/en.json'
import { render } from '../test/testUtils'
import Header from './Header'

// Mock the useAuth hook
vi.mock('../hooks/useAuth', () => ({
  useAuth: vi.fn()
}))

// Mock supabase client
vi.mock('../lib/supabaseClient', () => ({
  supabase: {
    auth: {
      signOut: vi.fn()
    }
  }
}))

// Mock react-router-dom
vi.mock('react-router-dom', async () => {
  const actual = await vi.importActual('react-router-dom')
  const mockUseLocation = vi.fn()
  mockUseLocation.mockReturnValue({
    pathname: '/',
    search: '',
    hash: '',
    state: null,
    key: 'default'
  })
  return {
    ...actual,
    useLocation: mockUseLocation,
    MemoryRouter: ({ children }: { children: React.ReactNode }) => <>{children}</>,
    useNavigate: () => vi.fn()
  }
})

describe('Header', () => {
  const mockSetShowSignIn = vi.fn()

  beforeEach(() => {
    vi.clearAllMocks()
    ;(useAuth as ReturnType<typeof vi.fn>).mockReturnValue({ user: null })
  })

  const renderComponent = (showSignIn = false) => {
    return render(
      <Header showSignIn={showSignIn} setShowSignIn={mockSetShowSignIn} />
    )
  }

  it('renders menu button', () => {
    renderComponent()
    expect(screen.getByRole('button')).toBeInTheDocument()
    expect(screen.getByText('≡')).toBeInTheDocument()
  })

  it('opens menu drawer when menu button is clicked', () => {
    renderComponent()
    const menuButton = screen.getByRole('button')
    fireEvent.click(menuButton)
    expect(screen.getByText(enTranslations.menu.language)).toBeInTheDocument()
  })

  it('closes menu drawer when clicking outside', async () => {
    renderComponent()
    const menuButton = screen.getByRole('button')
    fireEvent.click(menuButton)

    // Create a div outside the menu
    const outsideElement = document.createElement('div')
    document.body.appendChild(outsideElement)

    fireEvent.mouseDown(outsideElement)

    await waitFor(() => {
      expect(screen.queryByText(enTranslations.menu.language)).not.toBeInTheDocument()
    })

    document.body.removeChild(outsideElement)
  })

  it('keeps menu drawer open when clicking inside', async () => {
    renderComponent()
    const menuButton = screen.getByRole('button')
    fireEvent.click(menuButton)

    const languageText = screen.getByText(enTranslations.menu.language)
    fireEvent.mouseDown(languageText)

    // Menu should still be open
    expect(languageText).toBeInTheDocument()
  })

  it('keeps menu drawer open when clicking buttons inside', async () => {
    renderComponent()
    const menuButton = screen.getByRole('button')
    fireEvent.click(menuButton)

    // Click the sign up button
    const signUpButton = screen.getByText(enTranslations.auth.signUp.title)
    fireEvent.click(signUpButton)

    // Menu should still be open and sign up modal should be visible
    expect(screen.getByText(enTranslations.menu.language)).toBeInTheDocument()
    expect(signUpButton).toBeInTheDocument()
  })

  it('handles sign out correctly', async () => {
    // Mock authenticated user
    ;(useAuth as ReturnType<typeof vi.fn>).mockReturnValue({
      user: { email: 'test@example.com' }
    })

    renderComponent()
    const menuButton = screen.getByRole('button')
    fireEvent.click(menuButton)

    const signOutButton = screen.getByText(enTranslations.auth.signOut.button)
    fireEvent.click(signOutButton)

    // Menu should be closed after sign out
    await waitFor(() => {
      expect(screen.queryByText(enTranslations.menu.language)).not.toBeInTheDocument()
    })
  })

  it('shows sign in modal when URL has email_confirm parameter', async () => {
    const mockUseLocation = vi.fn()
    mockUseLocation.mockReturnValue({
      pathname: '/',
      search: '?email_confirm=true',
      hash: '',
      state: null,
      key: 'default'
    })
    vi.mocked(useLocation).mockImplementation(mockUseLocation)

    renderComponent()

    await waitFor(() => {
      expect(mockSetShowSignIn).toHaveBeenCalledWith(true)
    })
  })

  it('shows sign in modal when on signin path', async () => {
    const mockUseLocation = vi.fn()
    mockUseLocation.mockReturnValue({
      pathname: '/signin',
      search: '',
      hash: '',
      state: null,
      key: 'default'
    })
    vi.mocked(useLocation).mockImplementation(mockUseLocation)

    renderComponent()

    await waitFor(() => {
      expect(mockSetShowSignIn).toHaveBeenCalledWith(true)
    })
  })
})
