import { fireEvent, screen } from '@testing-library/react'
import { beforeEach, describe, expect, it, vi } from 'vitest'
import enTranslations from '../i18n/locales/en.json'
import { i18n, render } from '../test/testUtils'
import type { PlaygroundWithCoordinates, Visit } from '../types/database.types'
import Stats from './Stats'

describe('Stats', () => {
  // Mock data
  const mockPlaygrounds: PlaygroundWithCoordinates[] = [
    {
      id: '1',
      name: 'Playground 1',
      description: 'Description 1',
      address: 'Address 1',
      city: 'Helsinki',
      data_source: 'municipality',
      has_supervised_activities: true,
      created_at: new Date().toISOString(),
      latitude: 60.1699,
      longitude: 24.9384
    },
    {
      id: '2',
      name: 'Playground 2',
      description: 'Description 2',
      address: 'Address 2',
      city: 'Espoo',
      data_source: 'municipality',
      has_supervised_activities: false,
      created_at: new Date().toISOString(),
      latitude: 60.2055,
      longitude: 24.6559
    },
    {
      id: '3',
      name: 'Playground 3',
      description: 'Description 3',
      address: 'Address 3',
      city: 'Helsinki',
      data_source: 'osm',
      has_supervised_activities: true,
      created_at: new Date().toISOString(),
      latitude: 60.1699,
      longitude: 24.9384
    }
  ]

  const mockVisits: Visit[] = [
    {
      id: '1',
      playground_id: '1',
      user_id: 'user1',
      visited_at: new Date().toISOString(),
      notes: null
    }
  ]

  const mockOnBack = vi.fn()

  beforeEach(() => {
    vi.clearAllMocks()
    i18n.changeLanguage('en')
  })

  it('renders all playgrounds stats', () => {
    render(
      <Stats
        playgrounds={mockPlaygrounds}
        visits={mockVisits}
        onBack={mockOnBack}
      />
    )

    // Check title
    expect(screen.getByText(enTranslations.stats.title)).toBeInTheDocument()

    // Check total counts
    expect(screen.getByText(enTranslations.stats.allPlaygrounds)).toBeInTheDocument()
    expect(screen.getByText('3')).toBeInTheDocument() // Total playgrounds
    expect(screen.getByText('1')).toBeInTheDocument() // Total visits
  })

  it('renders city-specific stats when city is provided', () => {
    render(
      <Stats
        playgrounds={mockPlaygrounds}
        visits={mockVisits}
        onBack={mockOnBack}
        currentCity="Helsinki"
      />
    )

    // Check city-specific title
    const cityTitle = enTranslations.stats.currentCity.replace('{{city}}', 'Helsinki')
    expect(screen.getByText(cityTitle)).toBeInTheDocument()

    // Check Helsinki counts (2 playgrounds in Helsinki)
    expect(screen.getByText('2')).toBeInTheDocument()
  })

  it('renders filtered stats when filters are applied', () => {
    const filters = {
      visitStatus: 'visited' as const,
      minStars: null,
      minUserStars: null,
      hasSupervised: null,
      city: null,
      dataSource: null
    }

    render(
      <Stats
        playgrounds={mockPlaygrounds}
        visits={mockVisits}
        onBack={mockOnBack}
        filters={filters}
        filteredPlaygroundCount={2}
      />
    )

    // Check filtered title
    expect(screen.getByText(enTranslations.stats.filteredPlaygrounds)).toBeInTheDocument()

    // Check filtered count
    expect(screen.getByText('2')).toBeInTheDocument()
  })

  it('calls onBack when back button is clicked', () => {
    render(
      <Stats
        playgrounds={mockPlaygrounds}
        visits={mockVisits}
        onBack={mockOnBack}
      />
    )

    const backButton = screen.getByText(enTranslations.stats.backButton)
    fireEvent.click(backButton)

    expect(mockOnBack).toHaveBeenCalledTimes(1)
  })

  it('handles empty data', () => {
    render(
      <Stats
        playgrounds={[]}
        visits={[]}
        onBack={mockOnBack}
      />
    )

    // Should show 0 for total counts
    const zeroElements = screen.getAllByText('0')
    expect(zeroElements.length).toBeGreaterThan(0)
    expect(zeroElements[0]).toBeInTheDocument()
  })

  it('handles undefined data', () => {
    render(
      <Stats
        onBack={mockOnBack}
      />
    )

    // Should show 0 for total counts
    const zeroElements = screen.getAllByText('0')
    expect(zeroElements.length).toBeGreaterThan(0)
    expect(zeroElements[0]).toBeInTheDocument()
  })
})
