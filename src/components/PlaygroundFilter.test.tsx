/// <reference types="vitest" />
import '@testing-library/jest-dom/vitest'
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
    serviceLevel: null
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
    expect(screen.getByText('Service Level')).toBeInTheDocument()
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

  it('calls onChange when service level filter is clicked', () => {
    renderComponent()
    fireEvent.click(screen.getByText('Filter Playgrounds'))
    fireEvent.click(screen.getByText('Level 1'))
    expect(mockOnChange).toHaveBeenCalledWith({
      ...defaultFilters,
      serviceLevel: 1
    })
  })

  it('toggles service level filter when clicked twice', () => {
    renderComponent({ ...defaultFilters, serviceLevel: 1 })
    fireEvent.click(screen.getByText('Filter Playgrounds'))
    fireEvent.click(screen.getByText('Level 1'))
    expect(mockOnChange).toHaveBeenCalledWith({
      ...defaultFilters,
      serviceLevel: null
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
