import { fireEvent, screen } from '@testing-library/react'
import { beforeEach, describe, expect, it, vi } from 'vitest'
import { useAuth } from '../hooks/useAuth'
import enTranslations from '../i18n/locales/en.json'
import { render } from '../test/testUtils'
import { FilterOptions, PlaygroundFilter } from './PlaygroundFilter'

// Mock the useAuth hook
vi.mock('../hooks/useAuth', () => ({
  useAuth: vi.fn()
}))

// Mock the usePlaygrounds hook
vi.mock('../hooks/usePlaygrounds', () => ({
  usePlaygrounds: vi.fn().mockReturnValue({
    playgrounds: [
      { id: 1, city: 'Helsinki' },
      { id: 2, city: 'Espoo' }
    ],
    loading: false,
    error: null
  })
}))

// Mock Supabase client
vi.mock('../lib/supabaseClient', () => ({
  supabase: {
    from: vi.fn().mockReturnValue({
      select: vi.fn().mockReturnValue({
        data: [],
        error: null
      })
    })
  }
}))

// Mock useBreakpointValue to always return desktop values
vi.mock('@chakra-ui/react', async () => {
  const actual = await vi.importActual('@chakra-ui/react')
  return {
    ...actual,
    useBreakpointValue: vi.fn().mockImplementation((values) => {
      // Always return the sm/desktop value if it exists
      if (typeof values === 'object' && values !== null) {
        return values.sm || values.base
      }
      return values
    })
  }
})

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

describe('PlaygroundFilter', () => {
  const mockOnChange = vi.fn()
  const defaultFilters: FilterOptions = {
    visitStatus: null,
    minStars: null,
    minUserStars: null,
    hasSupervised: null,
    city: null
  }

  beforeEach(() => {
    vi.clearAllMocks()
    ;(useAuth as ReturnType<typeof vi.fn>).mockReturnValue({ user: null })
  })

  const renderComponent = (filters = defaultFilters): ReturnType<typeof render> => {
    return render(
      <PlaygroundFilter filters={filters} onChange={mockOnChange} />
    )
  }

  const getFilterButton = () => {
    return screen.getByRole('button', { name: enTranslations.filterPlaygrounds })
  }

  it('renders filter button', () => {
    renderComponent()
    expect(getFilterButton()).toBeInTheDocument()
  })

  it('shows filter options when clicked', () => {
    renderComponent()
    fireEvent.click(getFilterButton())
    expect(screen.getByText(enTranslations.playground.supervision.label)).toBeInTheDocument()
    expect(screen.getByText(enTranslations.minStars)).toBeInTheDocument()
  })

  it('does not show visit status filters when user is not logged in', () => {
    renderComponent()
    fireEvent.click(getFilterButton())
    expect(screen.queryByText(enTranslations.visitStatus)).not.toBeInTheDocument()
  })

  it('shows visit status filters when user is logged in', () => {
    ;(useAuth as ReturnType<typeof vi.fn>).mockReturnValue({ user: { id: '1' } })
    renderComponent()
    fireEvent.click(getFilterButton())
    expect(screen.getByText(enTranslations.visitStatus)).toBeInTheDocument()
  })

  it('calls onChange when supervision filter is clicked', () => {
    renderComponent()
    fireEvent.click(getFilterButton())
    fireEvent.click(screen.getByText(enTranslations.playground.supervision.supervised))
    expect(mockOnChange).toHaveBeenCalledWith({
      ...defaultFilters,
      hasSupervised: true
    })
  })

  it('toggles supervision filter when clicked twice', () => {
    renderComponent({ ...defaultFilters, hasSupervised: true })
    fireEvent.click(getFilterButton())
    fireEvent.click(screen.getByText(enTranslations.playground.supervision.supervised))
    expect(mockOnChange).toHaveBeenCalledWith({
      ...defaultFilters,
      hasSupervised: null
    })
  })

  it('shows more star filters when "Show More" is clicked', () => {
    renderComponent()
    fireEvent.click(getFilterButton())
    fireEvent.click(screen.getByText(enTranslations.showMore))
    expect(screen.getByText(enTranslations.showLess)).toBeInTheDocument()
  })

  it('shows visited filter when user is logged in', () => {
    ;(useAuth as ReturnType<typeof vi.fn>).mockReturnValue({ user: { id: '1' } })
    renderComponent()
    fireEvent.click(getFilterButton())
    expect(screen.getByText(enTranslations.visitStatus)).toBeInTheDocument()
    expect(screen.getByText(enTranslations.visited)).toBeInTheDocument()
  })

  // New tests for user ratings filter
  it('does not show user ratings filter when user is not logged in', () => {
    renderComponent()
    fireEvent.click(getFilterButton())
    fireEvent.click(screen.getByText(enTranslations.showMore))
    expect(screen.queryByText(enTranslations.minUserStars)).not.toBeInTheDocument()
  })

  it('shows user ratings filter when user is logged in', () => {
    ;(useAuth as ReturnType<typeof vi.fn>).mockReturnValue({ user: { id: '1' } })
    renderComponent()
    fireEvent.click(getFilterButton())
    fireEvent.click(screen.getByText(enTranslations.showMore))
    expect(screen.getByText(enTranslations.minUserStars)).toBeInTheDocument()
  })

  it('calls onChange when user rating filter is clicked', () => {
    ;(useAuth as ReturnType<typeof vi.fn>).mockReturnValue({ user: { id: '1' } })
    renderComponent()
    fireEvent.click(getFilterButton())
    fireEvent.click(screen.getByText(enTranslations.showMore))

    // Click the 5-star rating button
    const fiveStarButton = screen.getByTestId('user-rating-5')
    fireEvent.click(fiveStarButton)

    expect(mockOnChange).toHaveBeenCalledWith({
      ...defaultFilters,
      minUserStars: 5
    })
  })

  it('toggles user rating filter when clicked twice', () => {
    ;(useAuth as ReturnType<typeof vi.fn>).mockReturnValue({ user: { id: '1' } })
    renderComponent({ ...defaultFilters, minUserStars: 5 })
    fireEvent.click(getFilterButton())
    fireEvent.click(screen.getByText(enTranslations.showMore))

    // Click the 5-star rating button
    const fiveStarButton = screen.getByTestId('user-rating-5')
    fireEvent.click(fiveStarButton)

    expect(mockOnChange).toHaveBeenCalledWith({
      ...defaultFilters,
      minUserStars: null
    })
  })
})
