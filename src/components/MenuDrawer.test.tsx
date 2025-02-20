import { fireEvent, screen } from '@testing-library/react'
import { beforeEach, describe, expect, it, vi } from 'vitest'
import { useAuth } from '../hooks/useAuth'
import enTranslations from '../i18n/locales/en.json'
import { supabase } from '../lib/supabaseClient'
import { render } from '../test/testUtils'
import MenuDrawer from './MenuDrawer'

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

describe('MenuDrawer', () => {
  const mockOnClose = vi.fn()
  const mockSetShowSignIn = vi.fn()

  beforeEach(() => {
    vi.clearAllMocks()
    ;(useAuth as ReturnType<typeof vi.fn>).mockReturnValue({ user: null })
  })

  const renderComponent = (isOpen = true) => {
    return render(
      <MenuDrawer
        isOpen={isOpen}
        onClose={mockOnClose}
        showSignIn={false}
        setShowSignIn={mockSetShowSignIn}
      />
    )
  }

  it('does not render when closed', () => {
    renderComponent(false)
    expect(screen.queryByText(enTranslations.menu.language)).not.toBeInTheDocument()
  })

  it('renders when open', () => {
    renderComponent()
    expect(screen.getByText(enTranslations.menu.language)).toBeInTheDocument()
  })

  it('prevents event propagation when clicking the drawer', () => {
    renderComponent()
    // Find the drawer container
    const drawer = screen.getByTestId('menu-drawer')
    expect(drawer).toBeInTheDocument()

    // Create a click event
    const clickEvent = new MouseEvent('click', {
      bubbles: true,
      cancelable: true
    })

    // Spy on the event methods
    Object.defineProperty(clickEvent, 'stopPropagation', { value: vi.fn() })
    Object.defineProperty(clickEvent, 'preventDefault', { value: vi.fn() })

    // Fire the event
    fireEvent(drawer, clickEvent)

    expect(clickEvent.stopPropagation).toHaveBeenCalled()
    expect(clickEvent.preventDefault).toHaveBeenCalled()
  })

  it('handles sign up button click correctly', () => {
    renderComponent()
    const signUpButton = screen.getByText(enTranslations.auth.signUp.title)

    // Create a click event
    const clickEvent = new MouseEvent('click', {
      bubbles: true,
      cancelable: true
    })

    // Spy on the event methods
    Object.defineProperty(clickEvent, 'stopPropagation', { value: vi.fn() })

    // Fire the event
    fireEvent(signUpButton, clickEvent)

    expect(clickEvent.stopPropagation).toHaveBeenCalled()
    // The sign up modal should be visible
    expect(screen.getByTestId('sign-up-modal')).toBeInTheDocument()
  })

  it('handles sign in button click correctly', () => {
    renderComponent()
    const signInButton = screen.getByText(enTranslations.auth.signIn.title)

    // Create a click event
    const clickEvent = new MouseEvent('click', {
      bubbles: true,
      cancelable: true
    })

    // Spy on the event methods
    Object.defineProperty(clickEvent, 'stopPropagation', { value: vi.fn() })

    // Fire the event
    fireEvent(signInButton, clickEvent)

    expect(clickEvent.stopPropagation).toHaveBeenCalled()
    expect(mockSetShowSignIn).toHaveBeenCalledWith(true)
  })

  it('handles sign out correctly', async () => {
    // Mock authenticated user
    ;(useAuth as ReturnType<typeof vi.fn>).mockReturnValue({
      user: { email: 'test@example.com' }
    })

    // Mock successful sign out
    vi.mocked(supabase.auth.signOut).mockResolvedValue({ error: null })

    renderComponent()
    const signOutButton = screen.getByText(enTranslations.auth.signOut.button)

    // Create a click event
    const clickEvent = new MouseEvent('click', {
      bubbles: true,
      cancelable: true
    })

    // Spy on the event methods
    Object.defineProperty(clickEvent, 'stopPropagation', { value: vi.fn() })

    // Fire the event
    fireEvent(signOutButton, clickEvent)

    // Wait for the async operation to complete
    await vi.waitFor(() => {
      expect(clickEvent.stopPropagation).toHaveBeenCalled()
      expect(supabase.auth.signOut).toHaveBeenCalled()
      expect(mockOnClose).toHaveBeenCalled()
    })
  })

  it('handles about section toggle correctly', () => {
    renderComponent()

    // Click to show about section
    const aboutButton = screen.getByText(enTranslations.menu.buttons.about)
    fireEvent.click(aboutButton)

    // About section should be visible
    expect(screen.getByText(enTranslations.menu.about.title)).toBeInTheDocument()
    expect(aboutButton).not.toBeInTheDocument()

    // Click to hide about section
    const backButton = screen.getByText(enTranslations.menu.about.backButton)
    fireEvent.click(backButton)

    // About section should be hidden
    expect(screen.queryByText(enTranslations.menu.about.title)).not.toBeInTheDocument()
    expect(screen.getByText(enTranslations.menu.buttons.about)).toBeInTheDocument()
  })

  it('closes about section when drawer is closed', () => {
    const { rerender } = renderComponent()

    // Show about section
    const aboutButton = screen.getByText(enTranslations.menu.buttons.about)
    fireEvent.click(aboutButton)
    expect(screen.getByText(enTranslations.menu.about.title)).toBeInTheDocument()

    // Close drawer
    rerender(
      <MenuDrawer
        isOpen={false}
        onClose={mockOnClose}
        showSignIn={false}
        setShowSignIn={mockSetShowSignIn}
      />
    )

    // Reopen drawer
    rerender(
      <MenuDrawer
        isOpen={true}
        onClose={mockOnClose}
        showSignIn={false}
        setShowSignIn={mockSetShowSignIn}
      />
    )

    // About section should be hidden
    expect(screen.queryByText(enTranslations.menu.about.title)).not.toBeInTheDocument()
    expect(screen.getByText(enTranslations.menu.buttons.about)).toBeInTheDocument()
  })
})
