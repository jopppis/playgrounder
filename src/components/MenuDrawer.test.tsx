import { act, fireEvent, screen } from '@testing-library/react'
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
    },
    channel: vi.fn(() => ({
      on: vi.fn().mockReturnThis(),
      subscribe: vi.fn().mockReturnThis(),
      unsubscribe: vi.fn()
    })),
    from: vi.fn(() => ({
      select: vi.fn().mockResolvedValue({ data: [], error: null }),
      upsert: vi.fn().mockResolvedValue({ error: null }),
      delete: vi.fn().mockResolvedValue({ error: null }),
      eq: vi.fn().mockResolvedValue({ data: [], error: null })
    }))
  }
}))

describe('MenuDrawer', () => {
  const mockOnClose = vi.fn()
  const mockSetShowSignIn = vi.fn()
  const defaultProps = {
    filters: {
      searchQuery: null,
      visitStatus: null,
      minStars: null,
      minUserStars: null,
      hasSupervised: null,
      city: null,
      noRating: null,
      noUserRating: null,
      dataSource: null
    },
    filteredPlaygroundCount: 0,
    currentCity: null,
    visits: []
  }

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
        {...defaultProps}
      />
    )
  }

  it('does not render when closed', async () => {
    await act(async () => {
      renderComponent(false)
    })
    expect(screen.queryByRole('combobox')).not.toBeInTheDocument()
  })

  it('renders when open', async () => {
    await act(async () => {
      renderComponent()
    })
    expect(screen.getByRole('combobox')).toBeInTheDocument()
  })

  it('prevents event propagation when clicking the drawer', async () => {
    await act(async () => {
      renderComponent()
    })
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
    await act(async () => {
      fireEvent(drawer, clickEvent)
    })

    expect(clickEvent.stopPropagation).toHaveBeenCalled()
    expect(clickEvent.preventDefault).toHaveBeenCalled()
  })

  it('handles sign up button click correctly', async () => {
    await act(async () => {
      renderComponent()
    })
    const signUpButton = screen.getByText(enTranslations.auth.signUp.title)

    // Create a click event
    const clickEvent = new MouseEvent('click', {
      bubbles: true,
      cancelable: true
    })

    // Spy on the event methods
    Object.defineProperty(clickEvent, 'stopPropagation', { value: vi.fn() })

    // Fire the event
    await act(async () => {
      fireEvent(signUpButton, clickEvent)
    })

    expect(clickEvent.stopPropagation).toHaveBeenCalled()
    // The sign up modal should be visible
    expect(screen.getByTestId('sign-up-modal')).toBeInTheDocument()
  })

  it('handles sign in button click correctly', async () => {
    await act(async () => {
      renderComponent()
    })
    const signInButton = screen.getByText(enTranslations.auth.signIn.title)

    // Create a click event
    const clickEvent = new MouseEvent('click', {
      bubbles: true,
      cancelable: true
    })

    // Spy on the event methods
    Object.defineProperty(clickEvent, 'stopPropagation', { value: vi.fn() })

    // Fire the event
    await act(async () => {
      fireEvent(signInButton, clickEvent)
    })

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

    await act(async () => {
      renderComponent()
    })
    const signOutButton = screen.getByText(enTranslations.auth.signOut.button)

    // Create a click event
    const clickEvent = new MouseEvent('click', {
      bubbles: true,
      cancelable: true
    })

    // Spy on the event methods
    Object.defineProperty(clickEvent, 'stopPropagation', { value: vi.fn() })

    // Fire the event
    await act(async () => {
      fireEvent(signOutButton, clickEvent)
    })

    // Wait for the async operation to complete
    await vi.waitFor(() => {
      expect(clickEvent.stopPropagation).toHaveBeenCalled()
      expect(supabase.auth.signOut).toHaveBeenCalled()
      expect(mockOnClose).toHaveBeenCalled()
    })
  })

  it('handles about section toggle correctly', async () => {
    await act(async () => {
      renderComponent()
    })

    // Click to show about section
    const aboutButton = screen.getByText(enTranslations.menu.buttons.about)
    await act(async () => {
      fireEvent.click(aboutButton)
    })

    // About section should be visible
    expect(screen.getByText(enTranslations.menu.about.title)).toBeInTheDocument()
    expect(aboutButton).not.toBeInTheDocument()

    // Click to hide about section
    const backButton = screen.getByText(enTranslations.menu.about.backButton)
    await act(async () => {
      fireEvent.click(backButton)
    })

    // About section should be hidden
    expect(screen.queryByText(enTranslations.menu.about.title)).not.toBeInTheDocument()
    expect(screen.getByText(enTranslations.menu.buttons.about)).toBeInTheDocument()
  })

  it('closes about section when drawer is closed', async () => {
    const { rerender } = renderComponent()

    // Show about section
    const aboutButton = screen.getByText(enTranslations.menu.buttons.about)
    await act(async () => {
      fireEvent.click(aboutButton)
    })
    expect(screen.getByText(enTranslations.menu.about.title)).toBeInTheDocument()

    // Close drawer
    await act(async () => {
      rerender(
        <MenuDrawer
          isOpen={false}
          onClose={mockOnClose}
          showSignIn={false}
          setShowSignIn={mockSetShowSignIn}
          {...defaultProps}
        />
      )
    })

    // Reopen drawer
    await act(async () => {
      rerender(
        <MenuDrawer
          isOpen={true}
          onClose={mockOnClose}
          showSignIn={false}
          setShowSignIn={mockSetShowSignIn}
          {...defaultProps}
        />
      )
    })

    // About section should be hidden
    expect(screen.queryByText(enTranslations.menu.about.title)).not.toBeInTheDocument()
    expect(screen.getByText(enTranslations.menu.buttons.about)).toBeInTheDocument()
  })
})
