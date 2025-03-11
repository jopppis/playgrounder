import '@testing-library/jest-dom/vitest'
import { act, fireEvent, screen, waitFor } from '@testing-library/react'
import { beforeEach, describe, expect, it, vi } from 'vitest'
import { useToast } from '../../hooks/useToast'
import enTranslations from '../../i18n/locales/en.json'
import { supabase } from '../../lib/supabaseClient'
import { render } from '../../test/testUtils'
import SignUp from './SignUp'

// Mock the hooks
vi.mock('../../hooks/useToast', () => ({
  useToast: vi.fn().mockReturnValue({
    showSuccess: vi.fn(),
    showError: vi.fn()
  })
}))

// Mock supabase
vi.mock('../../lib/supabaseClient', () => ({
  supabase: {
    auth: {
      signUp: vi.fn()
    }
  }
}))

// Mock Turnstile
vi.mock('react-turnstile', () => ({
  default: vi.fn().mockImplementation(({ onSuccess }) => {
    // Call onSuccess synchronously to ensure it's called before any assertions
    if (onSuccess) {
      onSuccess('test-token')
    }
    return <div data-testid="mock-turnstile">Turnstile</div>
  })
}))

// Mock environment variables
vi.mock('../../lib/env', () => ({
  env: {
    VITE_APP_ENV: 'test',
    VITE_TURNSTILE_SITE_KEY: 'test-site-key'
  }
}))

// Define a type for the turnstile object
interface Turnstile {
  reset: () => void;
}

declare global {
  interface Window {
    turnstile?: Turnstile;
  }
}

describe('SignUp', () => {
  const mockOnSuccess = vi.fn()
  const mockShowSuccess = vi.fn()
  const mockShowError = vi.fn()
  const mockOnClose = vi.fn()

  beforeEach(() => {
    vi.clearAllMocks()

    // Setup default mock implementations
    ;(useToast as ReturnType<typeof vi.fn>).mockReturnValue({
      showSuccess: mockShowSuccess,
      showError: mockShowError
    })

    // Mock supabase auth methods
    ;(supabase.auth.signUp as ReturnType<typeof vi.fn>).mockResolvedValue({
      data: {},
      error: null
    })

    // Mock window.turnstile
    global.window.turnstile = {
      reset: vi.fn()
    }
  })

  it('renders the sign up form', () => {
    render(<SignUp onSuccess={mockOnSuccess} isOpen={true} onClose={mockOnClose} />)

    // Check for the heading specifically
    expect(screen.getByRole('heading', { name: enTranslations.auth.signUp.title })).toBeInTheDocument()
    expect(screen.getByText(enTranslations.auth.signUp.email)).toBeInTheDocument()
    expect(screen.getByText(enTranslations.auth.signUp.password)).toBeInTheDocument()
    expect(screen.getByRole('button', { name: enTranslations.auth.signUp.button.default })).toBeInTheDocument()
  })

  it('handles successful sign up', async () => {
    render(<SignUp onSuccess={mockOnSuccess} isOpen={true} onClose={mockOnClose} />)

    // Fill in the form
    fireEvent.change(screen.getByPlaceholderText(enTranslations.auth.signUp.emailPlaceholder), {
      target: { value: 'test@example.com' }
    })
    fireEvent.change(screen.getByPlaceholderText(enTranslations.auth.signUp.passwordPlaceholder), {
      target: { value: 'password123' }
    })

    // Submit the form - use fireEvent directly without act for more predictable behavior
    fireEvent.click(screen.getByRole('button', { name: enTranslations.auth.signUp.button.default }))

    // Wait for the API call to be made
    await waitFor(() => {
      expect(supabase.auth.signUp).toHaveBeenCalled()
    }, { timeout: 2000 })

    // Verify the correct parameters were passed
    const callArgs = (supabase.auth.signUp as ReturnType<typeof vi.fn>).mock.calls[0][0];
    expect(callArgs.email).toBe('test@example.com');
    expect(callArgs.password).toBe('password123');

    // Wait for success message
    await waitFor(() => {
      expect(mockShowSuccess).toHaveBeenCalled()
    }, { timeout: 2000 })

    // Verify onSuccess callback was called
    await waitFor(() => {
      expect(mockOnSuccess).toHaveBeenCalled()
    }, { timeout: 2000 })
  }, 10000)

  it('handles sign up error', async () => {
    // Mock sign up to fail
    ;(supabase.auth.signUp as ReturnType<typeof vi.fn>).mockResolvedValue({
      data: null,
      error: new Error('Email already taken')
    })

    render(<SignUp onSuccess={mockOnSuccess} isOpen={true} onClose={mockOnClose} />)

    // Fill in the form
    fireEvent.change(screen.getByPlaceholderText(enTranslations.auth.signUp.emailPlaceholder), {
      target: { value: 'test@example.com' }
    })
    fireEvent.change(screen.getByPlaceholderText(enTranslations.auth.signUp.passwordPlaceholder), {
      target: { value: 'password123' }
    })

    // Submit the form - use fireEvent directly
    fireEvent.click(screen.getByRole('button', { name: enTranslations.auth.signUp.button.default }))

    // Verify error handling
    await waitFor(() => {
      expect(supabase.auth.signUp).toHaveBeenCalled()
    }, { timeout: 2000 })

    await waitFor(() => {
      expect(mockShowError).toHaveBeenCalled()
    }, { timeout: 2000 })

    await waitFor(() => {
      expect(screen.getByText(enTranslations.auth.signUp.error.title)).toBeInTheDocument()
    }, { timeout: 2000 })

    await waitFor(() => {
      expect(window.turnstile?.reset).toHaveBeenCalled()
    }, { timeout: 2000 })
  })

  it('shows loading state during sign up', async () => {
    // Make the sign up promise not resolve immediately
    let resolveSignUp: (value: unknown) => void
    const signUpPromise = new Promise((resolve) => {
      resolveSignUp = resolve
    })
    ;(supabase.auth.signUp as ReturnType<typeof vi.fn>).mockReturnValue(signUpPromise)

    render(<SignUp onSuccess={mockOnSuccess} isOpen={true} onClose={mockOnClose} />)

    // Fill in the form
    fireEvent.change(screen.getByPlaceholderText(enTranslations.auth.signUp.emailPlaceholder), {
      target: { value: 'test@example.com' }
    })
    fireEvent.change(screen.getByPlaceholderText(enTranslations.auth.signUp.passwordPlaceholder), {
      target: { value: 'password123' }
    })

    // Submit the form
    fireEvent.click(screen.getByRole('button', { name: enTranslations.auth.signUp.button.default }))

    // Verify loading state - use a more flexible approach to find the button
    await waitFor(() => {
      // Look for any button that contains the loading text
      const loadingText = enTranslations.auth.signUp.button.loading
      const buttons = screen.getAllByRole('button')
      const loadingButton = buttons.find(button =>
        button.textContent?.includes(loadingText)
      )
      expect(loadingButton).toBeTruthy()
    }, { timeout: 2000 })

    // Resolve the promise
    await act(async () => {
      resolveSignUp!({ data: {}, error: null })
    })

    // Verify loading state is removed
    await waitFor(() => {
      const loadingText = enTranslations.auth.signUp.button.loading
      const buttons = screen.getAllByRole('button')
      const loadingButton = buttons.find(button =>
        button.textContent?.includes(loadingText)
      )
      expect(loadingButton).toBeFalsy()
    }, { timeout: 2000 })
  }, 10000)

  it('validates required fields', async () => {
    render(<SignUp onSuccess={mockOnSuccess} isOpen={true} onClose={mockOnClose} />)

    // Try to submit without filling in the form
    await act(async () => {
      fireEvent.click(screen.getByRole('button', { name: enTranslations.auth.signUp.button.default }))
    })

    // Verify the API was not called
    expect(supabase.auth.signUp).not.toHaveBeenCalled()
  })

  it('closes the form when close button is clicked', () => {
    render(<SignUp onSuccess={mockOnSuccess} isOpen={true} onClose={mockOnClose} />)

    fireEvent.click(screen.getByLabelText(enTranslations.auth.signUp.close))

    expect(mockOnClose).toHaveBeenCalled()
  })
})
