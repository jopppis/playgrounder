import '@testing-library/jest-dom'
import { fireEvent, render, screen, waitFor } from '@testing-library/react'
import i18next from 'i18next'
import { I18nextProvider } from 'react-i18next'
import { useAuth } from '../hooks/useAuth'
import { useRatings } from '../hooks/useRatings'
import { useVisits } from '../hooks/useVisits'
import { supabase } from '../lib/supabaseClient'
import { PlaygroundPopup } from './PlaygroundPopup'

// Mock the hooks
jest.mock('../hooks/useAuth', () => ({
  useAuth: jest.fn()
}))

jest.mock('../hooks/useVisits', () => ({
  useVisits: jest.fn()
}))

jest.mock('../hooks/useRatings', () => ({
  useRatings: jest.fn()
}))

// Mock supabase
jest.mock('../lib/supabaseClient', () => ({
  supabase: {
    from: jest.fn(() => ({
      insert: jest.fn(),
      delete: jest.fn()
    }))
  }
}))

// Create a mock i18n instance
const i18n = i18next.createInstance()
i18n.init({
  lng: 'en',
  resources: {
    en: {
      translation: {
        'playground.loginRequired': 'Login required',
        'playground.visitMarked': 'Visit marked',
        'playground.clickToRate': 'Click to rate',
        'playground.removeVisit': 'Remove Visit',
        'playground.markVisited': 'Mark Visited',
        'playground.rating': 'Rating',
        'playground.makePublic': 'Make Public',
        'common.error': 'Error',
        'common.unknownError': 'Unknown error'
      }
    }
  }
})

describe('PlaygroundPopup', () => {
  const mockPlayground = {
    id: '1',
    name: 'Test Playground',
    description: 'A test playground',
    address: '123 Test St',
    latitude: 60.1699,
    longitude: 24.9384,
    service_level: 1,
    created_at: '2024-01-01T00:00:00Z'
  }

  const mockOnVisitChange = jest.fn()
  const mockOnContentChange = jest.fn()

  beforeEach(() => {
    jest.clearAllMocks()
    ;(useAuth as jest.Mock).mockReturnValue({ user: null })
    ;(useVisits as jest.Mock).mockReturnValue({
      visits: [],
      loading: false
    })
    ;(useRatings as jest.Mock).mockReturnValue({
      rating: null,
      loading: false,
      submitRating: jest.fn(),
      togglePublic: jest.fn(),
      refresh: jest.fn()
    })
  })

  const renderComponent = (): ReturnType<typeof render> => {
    return render(
      <I18nextProvider i18n={i18n}>
        <PlaygroundPopup
          playground={mockPlayground}
          onVisitChange={mockOnVisitChange}
          onContentChange={mockOnContentChange}
        />
      </I18nextProvider>
    )
  }

  it('renders playground information', () => {
    renderComponent()
    expect(screen.getByText('Test Playground')).toBeInTheDocument()
    expect(screen.getByText('A test playground')).toBeInTheDocument()
    expect(screen.getByText('123 Test St')).toBeInTheDocument()
  })

  it('shows mark visited button when not visited', () => {
    renderComponent()
    expect(screen.getByText('Mark Visited')).toBeInTheDocument()
  })

  it('shows remove visit button when visited', () => {
    ;(useVisits as jest.Mock).mockReturnValue({
      visits: [{ playground_id: '1' }],
      loading: false
    })
    renderComponent()
    expect(screen.getByText('Remove Visit')).toBeInTheDocument()
  })

  it('requires login to mark visit', async () => {
    const originalWarn = console.warn
    console.warn = jest.fn()

    renderComponent()
    fireEvent.click(screen.getByText('Mark Visited'))
    expect(console.warn).toHaveBeenCalledWith('Login required')

    console.warn = originalWarn
  })

  it('handles successful visit marking', async () => {
    const mockUser = { id: 'user1' }
    ;(useAuth as jest.Mock).mockReturnValue({ user: mockUser })
    ;(supabase.from as jest.Mock).mockReturnValue({
      insert: jest.fn().mockResolvedValue({ error: null }),
      delete: jest.fn().mockResolvedValue({ error: null })
    })

    renderComponent()

    const markVisitedButton = screen.getByText('Mark Visited')
    fireEvent.click(markVisitedButton)

    await waitFor(() => {
      expect(mockOnVisitChange).toHaveBeenCalledWith(true)
    })
  })

  it('shows rating section when visited', async () => {
    ;(useVisits as jest.Mock).mockReturnValue({
      visits: [{ playground_id: '1' }],
      loading: false
    })

    renderComponent()

    await waitFor(() => {
      expect(screen.getByText('Rating')).toBeInTheDocument()
    })
  })

  it('shows loading state when fetching rating', async () => {
    ;(useVisits as jest.Mock).mockReturnValue({
      visits: [{ playground_id: '1' }],
      loading: false
    })
    ;(useRatings as jest.Mock).mockReturnValue({
      rating: null,
      loading: true,
      submitRating: jest.fn(),
      togglePublic: jest.fn(),
      refresh: jest.fn()
    })

    renderComponent()

    await waitFor(() => {
      expect(screen.getByRole('status')).toBeInTheDocument()
    })
  })

  it('calls onContentChange when rating changes', async () => {
    ;(useVisits as jest.Mock).mockReturnValue({
      visits: [{ playground_id: '1' }],
      loading: false
    })

    renderComponent()

    await waitFor(() => {
      expect(mockOnContentChange).toHaveBeenCalled()
    })
  })

  afterEach(() => {
    jest.clearAllMocks()
  })
})
