/// <reference types="vitest" />
import '@testing-library/jest-dom/vitest'
import { fireEvent, screen, waitFor } from '@testing-library/react'
import { useLocation } from 'react-router-dom'
import { beforeEach, describe, expect, it, vi } from 'vitest'
import { useAuth } from '../hooks/useAuth'
import { render } from '../test/testUtils'
import Header from './Header'

// Mock the useAuth hook
vi.mock('../hooks/useAuth', () => ({
  useAuth: vi.fn()
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
    expect(screen.getByText('Language')).toBeInTheDocument()
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
      expect(screen.queryByText('Language')).not.toBeInTheDocument()
    })

    document.body.removeChild(outsideElement)
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
