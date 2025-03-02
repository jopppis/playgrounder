import type { User } from '@supabase/supabase-js'
import '@testing-library/jest-dom/vitest'
import { act, fireEvent, screen, waitFor } from '@testing-library/react'
import { afterEach, beforeEach, describe, expect, it, vi } from 'vitest'
import { useAuth } from '../hooks/useAuth'
import { useRatings } from '../hooks/useRatings'
import { useVisits } from '../hooks/useVisits'
import enTranslations from '../i18n/locales/en.json'
import { supabase } from '../lib/supabaseClient'
import { render } from '../test/testUtils'
import type { PlaygroundWithCoordinates } from '../types/database.types'
import { PlaygroundPopup } from './PlaygroundPopup'

// Mock the hooks
vi.mock('../hooks/useAuth', () => ({
  useAuth: vi.fn().mockReturnValue({
    user: null,
    loading: false
  })
}))

vi.mock('../hooks/useVisits', () => ({
  useVisits: vi.fn().mockReturnValue({
    visits: [],
    loading: false,
    error: null,
    addVisit: vi.fn(),
    removeVisit: vi.fn(),
    refresh: vi.fn()
  })
}))

vi.mock('../hooks/useRatings', () => ({
  useRatings: vi.fn().mockReturnValue({
    rating: {
      avgRating: null,
      totalRatings: 0,
      userRating: null,
      isPublic: false
    },
    loading: false,
    error: null,
    submitRating: vi.fn(),
    togglePublic: vi.fn(),
    refresh: vi.fn()
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

describe('PlaygroundPopup', () => {
  const mockPlayground: PlaygroundWithCoordinates = {
    id: '1',
    name: 'Test Playground',
    description: 'A test playground',
    address: '123 Test St',
    has_supervised_activities: true,
    created_at: new Date().toISOString(),
    latitude: 0,
    longitude: 0,
    city: 'Test City',
    data_source: 'municipality'
  }

  const defaultProps = {
    playground: mockPlayground,
    onContentChange: vi.fn(),
    onVisitChange: vi.fn(),
    onRatingChange: vi.fn()
  }

  beforeEach(() => {
    vi.clearAllMocks()
  })

  const renderComponent = (props = {}) => {
    return render(<PlaygroundPopup {...defaultProps} {...props} />)
  }

  it('renders playground information', async () => {
    renderComponent()
    expect(screen.getByText('Test Playground')).toBeInTheDocument()
    expect(screen.getByText('A test playground')).toBeInTheDocument()

    // Check for location icon and link
    const locationLink = screen.getByRole('link')
    expect(locationLink).toHaveAttribute('href', 'https://www.google.com/maps/search/?api=1&query=123%20Test%20St')
    expect(locationLink).toHaveAttribute('data-part', 'trigger')
  })

  it('shows mark visited button when logged in', () => {
    (useAuth as ReturnType<typeof vi.fn>).mockReturnValue({
      user: { id: '1' } as User,
      loading: false
    })
    renderComponent()
    const switchElement = screen.getByLabelText(enTranslations.playground.markVisited)
    expect(switchElement).toBeInTheDocument()
    expect(switchElement).not.toBeDisabled()
  })

  it('shows disabled mark visited button when not logged in', () => {
    (useAuth as ReturnType<typeof vi.fn>).mockReturnValue({
      user: null,
      loading: false
    })
    renderComponent()
    const switchElement = screen.getByLabelText(enTranslations.playground.markVisited)
    expect(switchElement).toBeInTheDocument()
    expect(switchElement).toBeDisabled()
  })

  it('shows visited state when visited and logged in', async () => {
    (useAuth as ReturnType<typeof vi.fn>).mockReturnValue({
      user: { id: '1' } as User,
      loading: false
    })
    ;(useVisits as ReturnType<typeof vi.fn>).mockReturnValue({
      visits: [{ playground_id: '1', id: '1', user_id: '1', visited_at: new Date().toISOString(), notes: null }],
      loading: false,
      error: null,
      addVisit: vi.fn(),
      removeVisit: vi.fn(),
      refresh: vi.fn()
    })
    await act(async () => {
      renderComponent()
    })
    const switchElement = screen.getByLabelText(enTranslations.playground.markVisited)
    expect(switchElement).toBeInTheDocument()
    expect(switchElement.closest('label')).toHaveAttribute('data-state', 'checked')
    expect(switchElement).not.toBeDisabled()
  })

  it('shows disabled visited state when visited but not logged in', async () => {
    (useAuth as ReturnType<typeof vi.fn>).mockReturnValue({
      user: null,
      loading: false
    })
    ;(useVisits as ReturnType<typeof vi.fn>).mockReturnValue({
      visits: [{ playground_id: '1', id: '1', user_id: '1', visited_at: new Date().toISOString(), notes: null }],
      loading: false,
      error: null,
      addVisit: vi.fn(),
      removeVisit: vi.fn(),
      refresh: vi.fn()
    })
    await act(async () => {
      renderComponent()
    })
    const switchElement = screen.getByLabelText(enTranslations.playground.markVisited)
    expect(switchElement).toBeInTheDocument()
    expect(switchElement.closest('label')).toHaveAttribute('data-state', 'checked')
    expect(switchElement).toBeDisabled()
  })

  it('shows loading state when fetching rating', async () => {
    ;(useVisits as ReturnType<typeof vi.fn>).mockReturnValue({
      visits: [{ playground_id: '1', id: '1', user_id: '1', visited_at: new Date().toISOString(), notes: null }],
      loading: false,
      error: null,
      refresh: vi.fn(),
      updateVisitsState: vi.fn()
    })

    ;(useRatings as ReturnType<typeof vi.fn>).mockReturnValue({
      rating: {
        avgRating: null,
        totalRatings: 0,
        userRating: null,
        isPublic: false
      },
      loading: true,
      error: null,
      submitRating: vi.fn(),
      togglePublic: vi.fn(),
      refresh: vi.fn()
    })

    await act(async () => {
      renderComponent()
    })

    expect(screen.getByRole('status', { name: enTranslations.playground.rating.loading })).toBeInTheDocument()
  })

  it('calls onContentChange when rating changes', async () => {
    const mockSubmitRating = vi.fn().mockResolvedValue({ error: null })
    const mockSetOptimisticRating = vi.fn()
    const mockVisitData = { id: '1', user_id: '1', playground_id: '1', visited_at: new Date().toISOString(), notes: null }
    ;(useAuth as ReturnType<typeof vi.fn>).mockReturnValue({
      user: { id: '1' } as User,
      loading: false
    })
    ;(useVisits as ReturnType<typeof vi.fn>).mockReturnValue({
      visits: [mockVisitData],
      loading: false,
      error: null,
      addVisit: vi.fn(),
      removeVisit: vi.fn(),
      refresh: vi.fn()
    })
    ;(useRatings as ReturnType<typeof vi.fn>).mockReturnValue({
      rating: {
        avgRating: null,
        totalRatings: 0,
        userRating: null,
        isPublic: false
      },
      loading: false,
      error: null,
      submitRating: mockSubmitRating,
      togglePublic: vi.fn(),
      refresh: vi.fn(),
      setOptimisticRating: mockSetOptimisticRating
    })
    ;(supabase.from as unknown as ReturnType<typeof vi.fn>).mockReturnValue({
      select: vi.fn().mockReturnValue({
        eq: vi.fn().mockReturnValue({
          eq: vi.fn().mockReturnValue({
            single: vi.fn().mockResolvedValue({ data: mockVisitData, error: null })
          })
        })
      })
    })

    const mockOnContentChange = vi.fn()
    renderComponent({ onContentChange: mockOnContentChange })

    const ratingButton = screen.getByRole('button', { name: enTranslations.playground.rating.buttonLabel.replace('{{count}}', '1') })
    await act(async () => {
      fireEvent.click(ratingButton)
    })

    await waitFor(() => {
      expect(mockSubmitRating).toHaveBeenCalledWith(1, false, mockVisitData.id)
      expect(mockSetOptimisticRating).toHaveBeenCalledWith(expect.objectContaining({
        userRating: 1,
        isPublic: false
      }))
    })
  })

  afterEach(() => {
    vi.clearAllMocks()
  })
})
