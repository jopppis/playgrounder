/// <reference types="vitest" />
import '@testing-library/jest-dom/vitest'
import { fireEvent, screen, waitFor } from '@testing-library/react'
import { afterEach, beforeEach, describe, expect, it, vi, type MockInstance } from 'vitest'
import { useAuth } from '../hooks/useAuth'
import { useRatings } from '../hooks/useRatings'
import { useVisits } from '../hooks/useVisits'
import { supabase } from '../lib/supabaseClient'
import { render } from '../test/testUtils'
import { PlaygroundPopup } from './PlaygroundPopup'

// Mock the hooks
vi.mock('../hooks/useAuth', () => ({
  useAuth: vi.fn().mockReturnValue({
    user: null,
    isLoading: false,
    error: null
  })
}))

vi.mock('../hooks/useVisits', () => ({
  useVisits: vi.fn().mockReturnValue({
    visits: [],
    isLoading: false,
    error: null,
    markVisited: vi.fn(),
    removeVisit: vi.fn()
  })
}))

vi.mock('../hooks/useRatings', () => ({
  useRatings: vi.fn().mockReturnValue({
    ratings: [],
    isLoading: false,
    error: null,
    submitRating: vi.fn()
  })
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
    latitude: 60.1699,
    longitude: 24.9384,
    service_level: 1,
    created_at: '2024-01-01T00:00:00Z'
  }

  const mockOnVisitChange = vi.fn()
  const mockOnContentChange = vi.fn()

  beforeEach(() => {
    vi.clearAllMocks()
    // Reset default mock values
    ;((useVisits as unknown) as MockInstance<any, any>).mockReturnValue({
      visits: [],
      isLoading: false,
      error: null,
      markVisited: vi.fn(),
      removeVisit: vi.fn()
    })
    ;((useRatings as unknown) as MockInstance<any, any>).mockReturnValue({
      ratings: [],
      isLoading: false,
      error: null,
      submitRating: vi.fn()
    })
    ;((useAuth as unknown) as MockInstance<any, any>).mockReturnValue({
      user: null,
      isLoading: false,
      error: null
    })
  })

  const renderComponent = (): ReturnType<typeof render> => {
    return render(
      <PlaygroundPopup
        playground={mockPlayground}
        onVisitChange={mockOnVisitChange}
        onContentChange={mockOnContentChange}
      />
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
    ;(supabase.from as unknown as MockInstance<any, any>).mockReturnValue({
      insert: mockInsert
    })

    ;(useAuth as unknown as MockInstance<any, any>).mockReturnValue({
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
    ;(useAuth as ReturnType<typeof vi.fn>).mockReturnValue({ user: { id: '1' } })
    ;(supabase.from as ReturnType<typeof vi.fn>).mockReturnValue({
      insert: vi.fn().mockResolvedValue({ error: null })
    })

    renderComponent()
    fireEvent.click(screen.getByText('Mark Visited'))
    await waitFor(() => {
      expect(mockOnVisitChange).toHaveBeenCalled()
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
    ;(useVisits as unknown as MockInstance<any, any>).mockReturnValue({
      visits: [{ playground_id: '1' }],
      loading: false,
      error: null,
      refresh: vi.fn(),
      updateVisitsState: vi.fn()
    })

    // Then set up loading state for ratings
    ;(useRatings as unknown as MockInstance<any, any>).mockReturnValue({
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
    // Set up visited state
    ;(useVisits as unknown as MockInstance<any, any>).mockReturnValue({
      visits: [{ playground_id: '1' }],
      loading: false,
      error: null,
      refresh: vi.fn(),
      updateVisitsState: vi.fn()
    })

    // Set up mock for submitRating that resolves successfully
    const mockSubmitRating = vi.fn().mockResolvedValue({ error: null })

    // Set up ratings hook with the mock
    ;(useRatings as unknown as MockInstance<any, any>).mockReturnValue({
      rating: null,
      loading: false,
      error: null,
      submitRating: mockSubmitRating,
      togglePublic: vi.fn(),
      refresh: vi.fn()
    })

    // Set up auth with a logged-in user
    ;(useAuth as unknown as MockInstance<any, any>).mockReturnValue({
      user: { id: '1' },
      loading: false
    })

    renderComponent()

    // Find and click the first star button
    const starButtons = screen.getAllByRole('button')
    const ratingButton = starButtons.find(button => button.getAttribute('aria-label')?.includes('star'))
    if (!ratingButton) throw new Error('Rating button not found')
    fireEvent.click(ratingButton)

    await waitFor(() => {
      expect(mockSubmitRating).toHaveBeenCalled()
      expect(mockOnContentChange).toHaveBeenCalled()
    })
  })

  afterEach(() => {
    vi.clearAllMocks()
  })
})
