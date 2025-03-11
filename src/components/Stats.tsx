import { Box, Button, ButtonProps, Heading, Spinner, Text, VStack } from '@chakra-ui/react'
import { useMemo } from 'react'
import { useTranslation } from 'react-i18next'
import { PlaygroundWithCoordinates, Visit } from '../types/database.types'

type Filters = {
  searchQuery: string | null
  visitStatus: 'visited' | 'unvisited' | null
  minStars: number | null
  minUserStars: number | null
  hasSupervised: boolean | null
  city: string | null
  dataSource: 'municipality' | 'osm' | null
  noRating: boolean | null
  noUserRating: boolean | null
}

type StatsProps = {
  playgrounds?: PlaygroundWithCoordinates[]
  visits?: Visit[]
  filters?: Filters
  filteredPlaygroundCount?: number
  onBack: () => void
  currentCity?: string | null
  loading?: boolean
}

const Stats = ({ playgrounds, visits, filters, filteredPlaygroundCount, onBack, currentCity, loading }: StatsProps) => {
  const { t } = useTranslation()

  const buttonProps: ButtonProps = {
    w: "100%",
    variant: "solid",
    bg: "brand.500",
    color: "white",
    border: "1px solid",
    borderColor: "brand.500",
    _hover: { bg: 'secondary.500', transform: 'translateY(-2px)', borderColor: 'secondary.500' },
    _active: { bg: 'brand.500', transform: 'translateY(0)' },
    transition: "all 0.2s",
    display: "flex",
    alignItems: "center",
    justifyContent: "center",
    px: 3,
    h: "36px",
    gap: 2,
    fontSize: "sm"
  }

  const StatBox = ({ label, value }: { label: string, value: number | string }) => (
    <Box
      bg="gray.50"
      p={4}
      borderRadius="md"
      border="1px solid"
      borderColor="gray.200"
      textAlign="center"
    >
      <Text fontSize="2xl" fontWeight="bold" color="brand.500">
        {value}
      </Text>
      <Text fontSize="sm" color="gray.600">
        {label}
      </Text>
    </Box>
  )

  const hasActiveFilters = (filters: Filters) => {
    return filters.searchQuery !== null ||
      filters.visitStatus !== null ||
      filters.minStars !== null ||
      filters.minUserStars !== null ||
      filters.hasSupervised !== null ||
      filters.city !== null ||
      filters.dataSource !== null ||
      filters.noRating !== null ||
      filters.noUserRating !== null
  }

  // Calculate current city stats
  const currentCityStats = useMemo(() => {
    if (!currentCity || !playgrounds) return null

    const cityPlaygrounds = playgrounds.filter(p => p.city?.toLowerCase() === currentCity.toLowerCase())
    const cityVisits = visits?.filter(visit =>
      cityPlaygrounds.some(p => p.id === visit.playground_id)
    )

    return {
      total: cityPlaygrounds.length,
      visited: cityVisits?.length || 0
    }
  }, [currentCity, playgrounds, visits])

  // Calculate filtered visited count
  const filteredVisitedCount = useMemo(() => {
    if (!visits || !playgrounds || !filters || !filteredPlaygroundCount) return undefined

    return playgrounds.filter(playground => {
      // Check if playground is visited
      const isVisited = visits.some(visit => visit.playground_id === playground.id)
      if (!isVisited) return false

      // Apply all filters
      if (filters.city !== null && playground.city?.toLowerCase() !== filters.city) {
        return false
      }

      if (filters.hasSupervised !== null && playground.has_supervised_activities !== filters.hasSupervised) {
        return false
      }

      if (filters.dataSource !== null && playground.data_source !== filters.dataSource) {
        return false
      }

      if (filters.visitStatus === 'unvisited') return false
      if (filters.visitStatus === 'visited') return true

      return true
    }).length
  }, [visits, playgrounds, filters, filteredPlaygroundCount])

  const StatSection = ({ title, totalCount, visitedCount }: { title: string, totalCount: number, visitedCount: number }) => (
    <Box mb={6}>
      <Heading size="lg" color="brand.500" mb={3}>
        {title}
      </Heading>
      <Box display="grid" gridTemplateColumns="1fr 1fr" gap={4}>
        <StatBox
          label={t('stats.total')}
          value={totalCount}
        />
        <StatBox
          label={t('stats.visited')}
          value={visitedCount}
        />
      </Box>
    </Box>
  )

  return (
    <>
      <Text fontSize="lg" fontWeight="bold" color="brand.500" mb={4}>
        {t('stats.title')}
      </Text>
      {loading ? (
        <Box display="flex" justifyContent="center" alignItems="center" minH="200px">
          <Spinner size="xl" color="brand.500" />
        </Box>
      ) : (
        <>
          <VStack gap={4} align="stretch" mb={6}>
            {/* All Playgrounds Section */}
            <StatSection
              title={t('stats.allPlaygrounds')}
              totalCount={playgrounds?.length || 0}
              visitedCount={visits?.length || 0}
            />

            {/* Filtered Section */}
            {filters && filteredPlaygroundCount !== undefined && hasActiveFilters(filters) && (
              <StatSection
                title={t('stats.filteredPlaygrounds')}
                totalCount={filteredPlaygroundCount}
                visitedCount={filteredVisitedCount || 0}
              />
            )}

            {/* City-specific Section */}
            {currentCityStats && (
              <StatSection
                title={t('stats.currentCity', { city: currentCity })}
                totalCount={currentCityStats.total}
                visitedCount={currentCityStats.visited}
              />
            )}
          </VStack>
          <Button
            {...buttonProps}
            onClick={(e) => {
              e.stopPropagation()
              onBack()
            }}
          >
            {t('stats.backButton')}
          </Button>
        </>
      )}
    </>
  )
}

export default Stats
