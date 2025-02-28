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
    // Simulate successful captcha verification
    setTimeout(() => onSuccess?.('test-token'), 0)
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
    render(<SignUp onSuccess={mockOnSuccess} />)

    // Use getAllByText for elements that appear multiple times
    expect(screen.getAllByText(enTranslations.auth.signUp.title)[0]).toBeInTheDocument()
    expect(screen.getByText(enTranslations.auth.signUp.email)).toBeInTheDocument()
    expect(screen.getByText(enTranslations.auth.signUp.password)).toBeInTheDocument()
    expect(screen.getByRole('button', { name: enTranslations.auth.signUp.button.default })).toBeInTheDocument()
  })

  it('handles successful sign up', async () => {
    render(<SignUp onSuccess={mockOnSuccess} />)

    // Fill in the form
    fireEvent.change(screen.getByPlaceholderText(enTranslations.auth.signUp.emailPlaceholder), {
      target: { value: 'test@example.com' }
    })
    fireEvent.change(screen.getByPlaceholderText(enTranslations.auth.signUp.passwordPlaceholder), {
      target: { value: 'password123' }
    })

    // Submit the form
    await act(async () => {
      fireEvent.click(screen.getByRole('button', { name: enTranslations.auth.signUp.button.default }))
    })

    // Verify the API calls - simplified to avoid timeouts
    expect(supabase.auth.signUp).toHaveBeenCalledWith({
      email: 'test@example.com',
      password: 'password123'
    })

    // Wait for success message
    await waitFor(() => {
      expect(mockShowSuccess).toHaveBeenCalledWith({
        title: enTranslations.auth.signUp.success.title,
        description: enTranslations.auth.signUp.success.message
      })
    }, { timeout: 30000 })

    expect(screen.getByText(enTranslations.auth.signUp.success.title)).toBeInTheDocument()
    expect(screen.getByText(enTranslations.auth.signUp.success.message)).toBeInTheDocument()
    expect(mockOnSuccess).toHaveBeenCalled()
  }, 30000)

  it('handles sign up error', async () => {
    // Mock sign up to fail
    ;(supabase.auth.signUp as ReturnType<typeof vi.fn>).mockResolvedValue({
      data: null,
      error: new Error('Email already taken')
    })

    render(<SignUp onSuccess={mockOnSuccess} />)

    // Fill in the form
    fireEvent.change(screen.getByPlaceholderText(enTranslations.auth.signUp.emailPlaceholder), {
      target: { value: 'test@example.com' }
    })
    fireEvent.change(screen.getByPlaceholderText(enTranslations.auth.signUp.passwordPlaceholder), {
      target: { value: 'password123' }
    })

    // Submit the form
    await act(async () => {
      fireEvent.click(screen.getByRole('button', { name: enTranslations.auth.signUp.button.default }))
    })

    // Verify error handling
    await waitFor(() => {
      expect(supabase.auth.signUp).toHaveBeenCalled()
      expect(mockShowError).toHaveBeenCalledWith({
        title: enTranslations.auth.signUp.error.title,
        description: enTranslations.auth.signUp.error.message
      })
      expect(screen.getByText(enTranslations.auth.signUp.error.title)).toBeInTheDocument()
      expect(window.turnstile?.reset).toHaveBeenCalled()
    })
  })

  it('shows loading state during sign up', async () => {
    // Make the sign up promise not resolve immediately
    let resolveSignUp: (value: unknown) => void
    const signUpPromise = new Promise((resolve) => {
      resolveSignUp = resolve
    })
    ;(supabase.auth.signUp as ReturnType<typeof vi.fn>).mockReturnValue(signUpPromise)

    render(<SignUp onSuccess={mockOnSuccess} />)

    // Fill in the form
    fireEvent.change(screen.getByPlaceholderText(enTranslations.auth.signUp.emailPlaceholder), {
      target: { value: 'test@example.com' }
    })
    fireEvent.change(screen.getByPlaceholderText(enTranslations.auth.signUp.passwordPlaceholder), {
      target: { value: 'password123' }
    })

    // Submit the form
    await act(async () => {
      fireEvent.click(screen.getByRole('button', { name: enTranslations.auth.signUp.button.default }))
    })

    // Verify loading state
    expect(screen.getByRole('button', { name: enTranslations.auth.signUp.button.loading })).toBeInTheDocument()

    // Resolve the promise
    await act(async () => {
      resolveSignUp!({ data: {}, error: null })
    })

    // Verify loading state is removed
    await waitFor(() => {
      expect(screen.queryByRole('button', { name: enTranslations.auth.signUp.button.loading })).not.toBeInTheDocument()
    })
  })

  it('validates required fields', async () => {
    render(<SignUp onSuccess={mockOnSuccess} />)

    // Try to submit without filling in the form
    await act(async () => {
      fireEvent.click(screen.getByRole('button', { name: enTranslations.auth.signUp.button.default }))
    })

    // Verify the API was not called
    expect(supabase.auth.signUp).not.toHaveBeenCalled()
  })

  it('closes the form when close button is clicked', () => {
    render(<SignUp onSuccess={mockOnSuccess} />)

    fireEvent.click(screen.getByLabelText(enTranslations.auth.signUp.close))

    expect(mockOnSuccess).toHaveBeenCalled()
  })
})
