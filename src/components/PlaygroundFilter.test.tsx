import { fireEvent, screen } from '@testing-library/react'
import { beforeEach, describe, expect, it, vi } from 'vitest'
import { useAuth } from '../hooks/useAuth'
import { render } from '../test/testUtils'
import { FilterOptions, PlaygroundFilter } from './PlaygroundFilter'

// Mock the useAuth hook
vi.mock('../hooks/useAuth', () => ({
  useAuth: vi.fn()
}))

describe('PlaygroundFilter', () => {
  const mockOnChange = vi.fn()
  const defaultFilters: FilterOptions = {
    visitStatus: 'all',
    minStars: null,
    hasSupervised: null
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

  it('renders filter button', () => {
    renderComponent()
    expect(screen.getByText('Filter Playgrounds')).toBeInTheDocument()
  })

  it('shows filter options when clicked', () => {
    renderComponent()
    fireEvent.click(screen.getByText('Filter Playgrounds'))
    expect(screen.getByText('Supervision')).toBeInTheDocument()
    expect(screen.getByText('Minimum Stars')).toBeInTheDocument()
  })

  it('does not show visit status filters when user is not logged in', () => {
    renderComponent()
    fireEvent.click(screen.getByText('Filter Playgrounds'))
    expect(screen.queryByText('Visit Status')).not.toBeInTheDocument()
  })

  it('shows visit status filters when user is logged in', () => {
    ;(useAuth as ReturnType<typeof vi.fn>).mockReturnValue({ user: { id: '1' } })
    renderComponent()
    fireEvent.click(screen.getByText('Filter Playgrounds'))
    expect(screen.getByText('Visit Status')).toBeInTheDocument()
  })

  it('calls onChange when supervision filter is clicked', () => {
    renderComponent()
    fireEvent.click(screen.getByText('Filter Playgrounds'))
    fireEvent.click(screen.getByText('Supervised activities'))
    expect(mockOnChange).toHaveBeenCalledWith({
      ...defaultFilters,
      hasSupervised: true
    })
  })

  it('toggles supervision filter when clicked twice', () => {
    renderComponent({ ...defaultFilters, hasSupervised: true })
    fireEvent.click(screen.getByText('Filter Playgrounds'))
    fireEvent.click(screen.getByText('Supervised activities'))
    expect(mockOnChange).toHaveBeenCalledWith({
      ...defaultFilters,
      hasSupervised: null
    })
  })

  it('shows more star filters when "Show More" is clicked', () => {
    renderComponent()
    fireEvent.click(screen.getByText('Filter Playgrounds'))
    fireEvent.click(screen.getByText('Show More'))
    expect(screen.getByText('Show Less')).toBeInTheDocument()
  })

  it('shows visited filter when user is logged in', () => {
    ;(useAuth as ReturnType<typeof vi.fn>).mockReturnValue({ user: { id: '1' } })
    renderComponent()
    fireEvent.click(screen.getByText('Filter Playgrounds'))
    expect(screen.getByText('Visit Status')).toBeInTheDocument()
    expect(screen.getByText('Visited')).toBeInTheDocument()
  })
})
