import { User } from '@supabase/supabase-js'
import { fireEvent, screen } from '@testing-library/react'
import { beforeEach, describe, expect, it, vi } from 'vitest'
import { useAuth } from '../hooks/useAuth'
import { i18n, render } from '../test/testUtils'
import Account from './Account'

// Mock the useAuth hook
vi.mock('../hooks/useAuth', () => ({
  useAuth: vi.fn()
}))

// Mock the child components
vi.mock('./Auth/ChangePasswordModal', () => ({
  default: ({ onClose }: { onClose: () => void }) => (
    <div data-testid="change-password-modal">
      <button onClick={onClose}>Close</button>
    </div>
  )
}))

vi.mock('./Auth/RemoveAccount', () => ({
  default: ({ onClose }: { onClose: () => void }) => (
    <div data-testid="remove-account-modal">
      <button onClick={onClose}>Close</button>
    </div>
  )
}))

describe('Account', () => {
  const mockUser = {
    id: 'user-123',
    email: 'test@example.com',
    app_metadata: {},
    user_metadata: {},
    aud: 'authenticated',
    created_at: ''
  } as User

  const mockOnBack = vi.fn()

  beforeEach(() => {
    vi.resetAllMocks()

    // Setup default mock implementation
    vi.mocked(useAuth).mockReturnValue({
      user: mockUser,
      loading: false
    })

    // Set up i18n
    i18n.changeLanguage('en')
  })

  it('renders user email', () => {
    render(<Account onBack={mockOnBack} />)

    expect(screen.getByText('test@example.com')).toBeInTheDocument()
  })

  it('calls onBack when back button is clicked', () => {
    render(<Account onBack={mockOnBack} />)

    const backButton = screen.getByText(/back to menu/i)
    fireEvent.click(backButton)

    expect(mockOnBack).toHaveBeenCalledTimes(1)
  })

  it('shows change password modal when change password button is clicked', () => {
    render(<Account onBack={mockOnBack} />)

    // Initially, the modal should not be visible
    expect(screen.queryByTestId('change-password-modal')).not.toBeInTheDocument()

    // Click the change password button
    const changePasswordButton = screen.getByText(/change password/i)
    fireEvent.click(changePasswordButton)

    // Now the modal should be visible
    expect(screen.getByTestId('change-password-modal')).toBeInTheDocument()
  })

  it('closes change password modal when close button is clicked', () => {
    render(<Account onBack={mockOnBack} />)

    // Open the modal
    const changePasswordButton = screen.getByText(/change password/i)
    fireEvent.click(changePasswordButton)

    // Modal should be visible
    expect(screen.getByTestId('change-password-modal')).toBeInTheDocument()

    // Click the close button in the modal
    const closeButton = screen.getByText('Close')
    fireEvent.click(closeButton)

    // Modal should be closed
    expect(screen.queryByTestId('change-password-modal')).not.toBeInTheDocument()
  })

  it('shows remove account modal when delete account button is clicked', () => {
    render(<Account onBack={mockOnBack} />)

    // Initially, the modal should not be visible
    expect(screen.queryByTestId('remove-account-modal')).not.toBeInTheDocument()

    // Click the delete account button
    const deleteAccountButton = screen.getByText(/delete account/i)
    fireEvent.click(deleteAccountButton)

    // Now the modal should be visible
    expect(screen.getByTestId('remove-account-modal')).toBeInTheDocument()
  })

  it('closes remove account modal when close button is clicked', () => {
    render(<Account onBack={mockOnBack} />)

    // Open the modal
    const deleteAccountButton = screen.getByText(/delete account/i)
    fireEvent.click(deleteAccountButton)

    // Modal should be visible
    expect(screen.getByTestId('remove-account-modal')).toBeInTheDocument()

    // Click the close button in the modal
    const closeButton = screen.getByText('Close')
    fireEvent.click(closeButton)

    // Modal should be closed
    expect(screen.queryByTestId('remove-account-modal')).not.toBeInTheDocument()
  })
})
