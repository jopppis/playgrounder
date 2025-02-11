import '@testing-library/jest-dom/vitest'
import { fireEvent, screen, waitFor } from '@testing-library/react'
import { afterEach, beforeEach, describe, expect, it, vi, type MockInstance } from 'vitest'
import { useAuth } from '../hooks/useAuth'
import { useRatings } from '../hooks/useRatings'
import { useVisits } from '../hooks/useVisits'
import { supabase } from '../lib/supabaseClient'
import { render } from '../test/testUtils'
import type { Playground } from '../types/database.types'
import { PlaygroundPopup } from './PlaygroundPopup'

// Mock types
interface User {
  id: string
}

interface Visit {
  playground_id: string
}

interface Rating {
  value: number
  is_public: boolean
}

interface VisitsHook {
  visits: Visit[]
  isLoading: boolean
  error: null | Error
  markVisited: (id: string) => Promise<void>
  removeVisit: (id: string) => Promise<void>
}

interface RatingsHook {
  ratings: Rating[]
  isLoading: boolean
  error: null | Error
  submitRating: (value: number) => Promise<void>
  togglePublic: (isPublic: boolean) => Promise<void>
  refresh: () => Promise<void>
}

interface AuthHook {
  user: User | null
  isLoading: boolean
  error: null | Error
}

// Mock the hooks
vi.mock('../hooks/useAuth', () => ({
  useAuth: vi.fn().mockReturnValue({
    user: null,
    isLoading: false,
    error: null
  } as AuthHook)
}))

vi.mock('../hooks/useVisits', () => ({
  useVisits: vi.fn().mockReturnValue({
    visits: [],
    isLoading: false,
    error: null,
    markVisited: vi.fn(),
    removeVisit: vi.fn()
  } as VisitsHook)
}))

vi.mock('../hooks/useRatings', () => ({
  useRatings: vi.fn().mockReturnValue({
    ratings: [],
    isLoading: false,
    error: null,
    submitRating: vi.fn(),
    togglePublic: vi.fn(),
    refresh: vi.fn()
  } as RatingsHook)
}))

// Mock supabase
vi.mock('../lib/supabaseClient', () => ({
  supabase: {
    from: vi.fn(() => ({
      insert: vi.fn(),
      delete: vi.fn()
    }))
  }
}))

// Mock i18next
vi.mock('react-i18next', () => ({
  useTranslation: () => ({
    t: (key: string) => {
      const translations: Record<string, string> = {
        'playground.loginRequired': 'Please sign in to mark a visit',
        'playground.markVisited': 'Mark Visited',
        'playground.removeVisit': 'Remove Visit',
        'playground.rating': 'Rating',
        'playground.makePublic': 'Make Public'
      }
      return translations[key] || key
    }
  }),
  I18nextProvider: ({ children }: { children: React.ReactNode }) => children
}))

describe('PlaygroundPopup', () => {
  const mockPlayground = {
    id: '1',
    name: 'Test Playground',
    description: 'A test playground',
    address: '123 Test St',
    service_level: 1,
    created_at: '2024-01-01T00:00:00Z',
    latitude: 60.1699,
    longitude: 24.9384
  } as const

  const mockOnVisitChange = vi.fn()
  const mockOnContentChange = vi.fn()

  const mockSetShowPopup = vi.fn<[boolean], void>()
  const mockSetSelectedPlayground = vi.fn<[Playground | null], void>()
  const mockHandleSubmit = vi.fn<[Playground], void>()
  const mockHandleDelete = vi.fn<[string], void>()
  const mockHandleVisited = vi.fn<[string, boolean], void>()

  const defaultProps = {
    showPopup: true,
    setShowPopup: mockSetShowPopup,
    selectedPlayground: mockPlayground,
    setSelectedPlayground: mockSetSelectedPlayground,
    onSubmit: mockHandleSubmit,
    onDelete: mockHandleDelete,
    onVisitChange: mockHandleVisited,
    playground: mockPlayground
  }

  beforeEach(() => {
    vi.clearAllMocks()
    // Reset default mock values with proper types
    ;(useVisits as MockInstance<[], VisitsHook>).mockReturnValue({
      visits: [],
      isLoading: false,
      error: null,
      markVisited: vi.fn(),
      removeVisit: vi.fn()
    })
    ;(useRatings as MockInstance<[], RatingsHook>).mockReturnValue({
      ratings: [],
      isLoading: false,
      error: null,
      submitRating: vi.fn(),
      togglePublic: vi.fn(),
      refresh: vi.fn()
    })
    ;(useAuth as MockInstance<[], AuthHook>).mockReturnValue({
      user: null,
      isLoading: false,
      error: null
    })
  })

  const renderComponent = (props = {}) => {
    return render(<PlaygroundPopup {...defaultProps} {...props} />)
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
    ;(useVisits as ReturnType<typeof vi.fn>).mockReturnValue({
      visits: [{ playground_id: '1' }],
      isLoading: false
    })
    renderComponent()
    expect(screen.getByText('Remove Visit')).toBeInTheDocument()
  })

  it('requires login to mark visit', () => {
    // Mock supabase insert to track if it's called
    const mockInsert = vi.fn().mockResolvedValue({ error: null })
    ;(supabase.from as unknown as MockInstance<typeof supabase.from, ReturnType<typeof supabase.from>>).mockReturnValue({
      insert: mockInsert
    })

    ;(useAuth as unknown as MockInstance<typeof useAuth, ReturnType<typeof useAuth>>).mockReturnValue({
      user: null,
      loading: false,
      error: null
    })

    renderComponent()
    fireEvent.click(screen.getByRole('button', { name: 'Mark Visited' }))

    // Verify that the visit was not marked
    expect(mockInsert).not.toHaveBeenCalled()
    expect(mockOnVisitChange).not.toHaveBeenCalled()
  })

  it('handles successful visit marking', async () => {
    const mockMarkVisited = vi.fn().mockResolvedValue({ error: null })
    ;(useAuth as MockInstance<[], AuthHook>).mockReturnValue({
      user: { id: '1' },
      isLoading: false,
      error: null
    })
    ;(useVisits as MockInstance<[], VisitsHook>).mockReturnValue({
      visits: [],
      isLoading: false,
      error: null,
      markVisited: mockMarkVisited,
      removeVisit: vi.fn()
    })
    ;(supabase.from as unknown as MockInstance<[string], {
      insert: () => Promise<{ error: null | Error }>;
      delete: () => Promise<{ error: null | Error }>;
    }>).mockReturnValue({
      insert: vi.fn().mockResolvedValue({ error: null }),
      delete: vi.fn()
    })

    render(<PlaygroundPopup
      playground={mockPlayground}
      onVisitChange={mockOnVisitChange}
      onContentChange={mockOnContentChange}
    />)

    fireEvent.click(screen.getByText('Mark Visited'))

    await waitFor(() => {
      expect(mockOnVisitChange).toHaveBeenCalledWith(true)
    })
  })

  it('shows rating section when visited', () => {
    ;(useVisits as ReturnType<typeof vi.fn>).mockReturnValue({
      visits: [{ playground_id: '1' }],
      isLoading: false
    })
    renderComponent()
    expect(screen.getByText('Rating')).toBeInTheDocument()
  })

  it('shows loading state when fetching rating', () => {
    // First set up a visited playground
    ;(useVisits as unknown as MockInstance<typeof useVisits, ReturnType<typeof useVisits>>).mockReturnValue({
      visits: [{ playground_id: '1' }],
      loading: false,
      error: null,
      refresh: vi.fn(),
      updateVisitsState: vi.fn()
    })

    // Then set up loading state for ratings
    ;(useRatings as unknown as MockInstance<typeof useRatings, ReturnType<typeof useRatings>>).mockReturnValue({
      rating: null,
      loading: true,
      error: null,
      submitRating: vi.fn(),
      togglePublic: vi.fn(),
      refresh: vi.fn()
    })

    renderComponent()
    expect(screen.getByRole('status')).toBeInTheDocument()
  })

  it('calls onContentChange when rating changes', async () => {
    const mockSubmitRating = vi.fn().mockResolvedValue({ error: null })
    ;(useAuth as MockInstance<[], AuthHook>).mockReturnValue({
      user: { id: '1' },
      isLoading: false,
      error: null
    })
    ;(useVisits as MockInstance<[], VisitsHook>).mockReturnValue({
      visits: [{ playground_id: '1' }],
      isLoading: false,
      error: null,
      markVisited: vi.fn(),
      removeVisit: vi.fn()
    })
    ;(useRatings as MockInstance<[], RatingsHook>).mockReturnValue({
      ratings: [],
      isLoading: false,
      error: null,
      submitRating: mockSubmitRating,
      togglePublic: vi.fn(),
      refresh: vi.fn()
    })

    render(<PlaygroundPopup
      playground={mockPlayground}
      onVisitChange={mockOnVisitChange}
      onContentChange={mockOnContentChange}
    />)

    // Find and click the first star rating button
    const ratingButton = screen.getByRole('button', { name: /Rate 1 star/ })
    fireEvent.click(ratingButton, {
      preventDefault: () => {},
      stopPropagation: () => {}
    })

    await waitFor(() => {
      expect(mockSubmitRating).toHaveBeenCalledWith(1, false)
      expect(mockOnContentChange).toHaveBeenCalled()
    })
  })

  afterEach(() => {
    vi.clearAllMocks()
  })
})
