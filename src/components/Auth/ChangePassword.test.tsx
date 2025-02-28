import type { User } from '@supabase/supabase-js'
import '@testing-library/jest-dom/vitest'
import { act, fireEvent, screen, waitFor } from '@testing-library/react'
import { beforeEach, describe, expect, it, vi } from 'vitest'
import { useToast } from '../../hooks/useToast'
import enTranslations from '../../i18n/locales/en.json'
import { supabase } from '../../lib/supabaseClient'
import { render } from '../../test/testUtils'
import ChangePassword from './ChangePassword'

// Mock the hooks
vi.mock('../../hooks/useAuth', () => ({
  useAuth: vi.fn().mockReturnValue({
    user: { id: 'test-user-id', email: 'test@example.com' } as User,
    loading: false
  })
}))

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
      getUser: vi.fn(),
      signInWithPassword: vi.fn(),
      updateUser: vi.fn()
    }
  }
}))

// Mock Turnstile
vi.mock('react-turnstile', () => ({
  default: vi.fn().mockImplementation(() => <div data-testid="mock-turnstile">Turnstile</div>)
}))

// Mock environment variables
vi.mock('../../lib/env', () => ({
  env: {
    VITE_APP_ENV: 'local',
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

describe('ChangePassword', () => {
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
    ;(supabase.auth.getUser as ReturnType<typeof vi.fn>).mockResolvedValue({
      data: { user: { email: 'test@example.com' } },
      error: null
    })
    ;(supabase.auth.signInWithPassword as ReturnType<typeof vi.fn>).mockResolvedValue({
      data: {},
      error: null
    })
    ;(supabase.auth.updateUser as ReturnType<typeof vi.fn>).mockResolvedValue({
      data: {},
      error: null
    })

    // Mock window.turnstile
    global.window.turnstile = {
      reset: vi.fn()
    }
  })

  it('renders the change password form', () => {
    render(<ChangePassword onSuccess={mockOnSuccess} />)

    // Use getAllByText for elements that appear multiple times
    expect(screen.getAllByText(enTranslations.auth.changePassword.title)[0]).toBeInTheDocument()
    expect(screen.getByText(enTranslations.auth.changePassword.currentPassword)).toBeInTheDocument()
    expect(screen.getByText(enTranslations.auth.changePassword.newPassword)).toBeInTheDocument()
    expect(screen.getByRole('button', { name: enTranslations.auth.changePassword.button.default })).toBeInTheDocument()
  })

  it('handles successful password change', async () => {
    render(<ChangePassword onSuccess={mockOnSuccess} />)

    // Fill in the form
    fireEvent.change(screen.getByPlaceholderText(enTranslations.auth.changePassword.currentPasswordPlaceholder), {
      target: { value: 'current-password' }
    })
    fireEvent.change(screen.getByPlaceholderText(enTranslations.auth.changePassword.newPasswordPlaceholder), {
      target: { value: 'new-password' }
    })

    // Submit the form
    await act(async () => {
      fireEvent.click(screen.getByRole('button', { name: enTranslations.auth.changePassword.button.default }))
    })

    // Verify the API calls
    await waitFor(() => {
      expect(supabase.auth.getUser).toHaveBeenCalled()
    })

    await waitFor(() => {
      expect(supabase.auth.signInWithPassword).toHaveBeenCalledWith({
        email: 'test@example.com',
        password: 'current-password'
      })
    })

    await waitFor(() => {
      expect(supabase.auth.updateUser).toHaveBeenCalledWith({
        password: 'new-password'
      })
    })

    // Wait for success message
    await waitFor(() => {
      expect(mockShowSuccess).toHaveBeenCalledWith({
        title: enTranslations.auth.changePassword.success.title,
        description: enTranslations.auth.changePassword.success.message
      })
    })

    // Wait for onSuccess to be called
    await waitFor(() => {
      expect(mockOnSuccess).toHaveBeenCalled()
    })
  })

  it('handles incorrect current password', async () => {
    // Mock sign in to fail
    ;(supabase.auth.signInWithPassword as ReturnType<typeof vi.fn>).mockResolvedValue({
      data: null,
      error: new Error('Invalid login credentials')
    })

    render(<ChangePassword onSuccess={mockOnSuccess} />)

    // Fill in the form
    fireEvent.change(screen.getByPlaceholderText(enTranslations.auth.changePassword.currentPasswordPlaceholder), {
      target: { value: 'wrong-password' }
    })
    fireEvent.change(screen.getByPlaceholderText(enTranslations.auth.changePassword.newPasswordPlaceholder), {
      target: { value: 'new-password' }
    })

    // Submit the form
    await act(async () => {
      fireEvent.click(screen.getByRole('button', { name: enTranslations.auth.changePassword.button.default }))
    })

    // Verify error handling
    await waitFor(() => {
      expect(supabase.auth.signInWithPassword).toHaveBeenCalled()
    })

    await waitFor(() => {
      expect(supabase.auth.updateUser).not.toHaveBeenCalled()
    })

    await waitFor(() => {
      expect(mockShowError).toHaveBeenCalledWith({
        title: enTranslations.auth.changePassword.error.title,
        description: enTranslations.auth.changePassword.error.message
      })
    })

    await waitFor(() => {
      expect(screen.getByText(enTranslations.auth.changePassword.error.title)).toBeInTheDocument()
    })
  })

  it('handles update password error', async () => {
    // Mock update to fail
    ;(supabase.auth.updateUser as ReturnType<typeof vi.fn>).mockResolvedValue({
      data: null,
      error: new Error('Failed to update password')
    })

    render(<ChangePassword onSuccess={mockOnSuccess} />)

    // Fill in the form
    fireEvent.change(screen.getByPlaceholderText(enTranslations.auth.changePassword.currentPasswordPlaceholder), {
      target: { value: 'current-password' }
    })
    fireEvent.change(screen.getByPlaceholderText(enTranslations.auth.changePassword.newPasswordPlaceholder), {
      target: { value: 'new-password' }
    })

    // Submit the form
    await act(async () => {
      fireEvent.click(screen.getByRole('button', { name: enTranslations.auth.changePassword.button.default }))
    })

    // Verify error handling
    await waitFor(() => {
      expect(supabase.auth.updateUser).toHaveBeenCalled()
    })

    await waitFor(() => {
      expect(mockShowError).toHaveBeenCalledWith({
        title: enTranslations.auth.changePassword.error.title,
        description: enTranslations.auth.changePassword.error.message
      })
    })

    await waitFor(() => {
      expect(screen.getByText(enTranslations.auth.changePassword.error.title)).toBeInTheDocument()
    })
  })

  it('closes the form when close button is clicked', () => {
    render(<ChangePassword onSuccess={mockOnSuccess} />)

    fireEvent.click(screen.getByLabelText(enTranslations.auth.changePassword.close))

    expect(mockOnSuccess).toHaveBeenCalled()
  })
})
