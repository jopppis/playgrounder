import { fireEvent, render, screen } from '@testing-library/react'
import i18next from 'i18next'
import { I18nextProvider } from 'react-i18next'
import { useAuth } from '../hooks/useAuth'
import { FilterOptions, PlaygroundFilter } from './PlaygroundFilter'

// Mock the useAuth hook
jest.mock('../hooks/useAuth', () => ({
  useAuth: jest.fn()
}))

// Create a mock i18n instance
const i18n = i18next.createInstance()
i18n.init({
  lng: 'en',
  resources: {
    en: {
      translation: {
        filterPlaygrounds: 'Filter Playgrounds',
        'playground.serviceLevel': 'Service Level',
        'playground.level1': 'Level 1',
        'playground.level2': 'Level 2',
        visitStatus: 'Visit Status',
        visited: 'Visited',
        unvisited: 'Unvisited',
        minStars: 'Minimum Stars',
        showMore: 'Show More',
        showLess: 'Show Less'
      }
    }
  }
})

describe('PlaygroundFilter', () => {
  const mockOnChange = jest.fn()
  const defaultFilters: FilterOptions = {
    visitStatus: 'all',
    minStars: null,
    serviceLevel: null
  }

  beforeEach(() => {
    jest.clearAllMocks()
    ;(useAuth as jest.Mock).mockReturnValue({ user: null })
  })

  const renderComponent = (filters = defaultFilters): ReturnType<typeof render> => {
    return render(
      <I18nextProvider i18n={i18n}>
        <PlaygroundFilter filters={filters} onChange={mockOnChange} />
      </I18nextProvider>
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
    ;(useAuth as jest.Mock).mockReturnValue({ user: { id: '1' } })
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
})
