import type { User } from '@supabase/supabase-js'
import '@testing-library/jest-dom/vitest'
import { fireEvent, screen, waitFor } from '@testing-library/react'
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
    markVisited: vi.fn(),
    removeVisit: vi.fn(),
    refresh: vi.fn(),
    updateVisitsState: vi.fn()
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

// Mock i18next to use actual English translations
vi.mock('react-i18next', () => ({
  useTranslation: () => ({
    t: (key: string, options?: Record<string, unknown>) => {
      // Split the key by dots to traverse the translations object
      const keys = key.split('.')
      const value = keys.reduce((obj: Record<string, unknown>, key: string) => {
        if (typeof obj === 'object' && obj !== null) {
          return obj[key] as Record<string, unknown>
        }
        return {}
      }, enTranslations as Record<string, unknown>)

      // Handle interpolation if options are provided
      let result = typeof value === 'string' ? value : key
      if (typeof result === 'string' && options) {
        Object.entries(options).forEach(([key, val]) => {
          result = result.replace(`{{${key}}}`, String(val))
        })
      }

      return result
    }
  }),
  I18nextProvider: ({ children }: { children: React.ReactNode }) => children
}))

describe('PlaygroundPopup', () => {
  const mockPlayground: PlaygroundWithCoordinates = {
    id: '1',
    name: 'Test Playground',
    description: 'A test playground',
    address: '123 Test St',
    has_supervised_activities: true,
    created_at: '2024-01-01T00:00:00Z',
    latitude: 60.1699,
    longitude: 24.9384
  }

  const mockSetShowPopup = vi.fn()
  const mockSetSelectedPlayground = vi.fn()
  const mockHandleSubmit = vi.fn()
  const mockHandleDelete = vi.fn()
  const mockHandleVisited = vi.fn()

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
    const switchElement = screen.getByRole('checkbox', { name: enTranslations.playground.markVisited })
    expect(switchElement).toBeInTheDocument()
  })

  it('shows visited state when visited', () => {
    ;(useVisits as ReturnType<typeof vi.fn>).mockReturnValue({
      visits: [{ playground_id: '1', id: '1', user_id: '1', visited_at: new Date().toISOString(), notes: null }],
      loading: false,
      error: null,
      markVisited: vi.fn(),
      removeVisit: vi.fn(),
      refresh: vi.fn(),
      updateVisitsState: vi.fn()
    })
    renderComponent()
    const switchElement = screen.getByRole('checkbox', { name: enTranslations.playground.markVisited })
    expect(switchElement).toBeInTheDocument()
    expect(switchElement).toBeChecked()
  })

  it('requires login to mark visit', () => {
    const mockInsert = vi.fn().mockResolvedValue({ error: null })
    ;(supabase.from as unknown as ReturnType<typeof vi.fn>).mockReturnValue({
      insert: mockInsert
    })

    ;(useAuth as ReturnType<typeof vi.fn>).mockReturnValue({
      user: null,
      loading: false
    })

    ;(useVisits as ReturnType<typeof vi.fn>).mockReturnValue({
      visits: [],
      loading: false,
      error: null,
      markVisited: vi.fn(),
      removeVisit: vi.fn(),
      refresh: vi.fn(),
      updateVisitsState: vi.fn()
    })

    renderComponent()
    const switchElement = screen.getByRole('checkbox', { name: enTranslations.playground.markVisited })
    expect(switchElement).toBeDisabled()
    fireEvent.click(switchElement)

    expect(mockInsert).not.toHaveBeenCalled()
    expect(mockHandleVisited).not.toHaveBeenCalled()
  })

  it('handles successful visit marking', async () => {
    const mockMarkVisited = vi.fn().mockResolvedValue({ error: null })
    ;(useAuth as ReturnType<typeof vi.fn>).mockReturnValue({
      user: { id: '1' } as User,
      loading: false
    })
    ;(useVisits as ReturnType<typeof vi.fn>).mockReturnValue({
      visits: [],
      loading: false,
      error: null,
      markVisited: mockMarkVisited,
      removeVisit: vi.fn(),
      refresh: vi.fn(),
      updateVisitsState: vi.fn()
    })

    renderComponent()
    const switchElement = screen.getByRole('checkbox', { name: enTranslations.playground.markVisited })
    fireEvent.click(switchElement)

    await waitFor(() => {
      expect(mockHandleVisited).toHaveBeenCalledWith(true)
    })
  })

  it('shows loading state when fetching rating', () => {
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

    renderComponent()
    expect(screen.getByRole('status')).toBeInTheDocument()
  })

  it('calls onContentChange when rating changes', async () => {
    const mockSubmitRating = vi.fn().mockResolvedValue({ error: null })
    ;(useAuth as ReturnType<typeof vi.fn>).mockReturnValue({
      user: { id: '1' } as User,
      loading: false
    })
    ;(useVisits as ReturnType<typeof vi.fn>).mockReturnValue({
      visits: [{ playground_id: '1', id: '1', user_id: '1', visited_at: new Date().toISOString(), notes: null }],
      loading: false,
      error: null,
      markVisited: vi.fn(),
      removeVisit: vi.fn(),
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
      loading: false,
      error: null,
      submitRating: mockSubmitRating,
      togglePublic: vi.fn(),
      refresh: vi.fn()
    })

    renderComponent()

    const ratingButton = screen.getByRole('button', { name: /Rate 1 star/ })
    fireEvent.click(ratingButton, {
      preventDefault: () => {},
      stopPropagation: () => {}
    })

    await waitFor(() => {
      expect(mockSubmitRating).toHaveBeenCalledWith(1, false)
    })
  })

  afterEach(() => {
    vi.clearAllMocks()
  })
})
