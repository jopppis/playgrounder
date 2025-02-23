import { Box, Button, ButtonProps, Text, VStack } from '@chakra-ui/react'
import { useTranslation } from 'react-i18next'

type Filters = {
  visitStatus: 'all' | 'visited' | 'unvisited'
  minStars: number | null
  minUserStars: number | null
  hasSupervised: boolean | null
  city: string | null
}

type StatsProps = {
  playgrounds?: { id: string }[]
  visits?: { id: string }[]
  filters?: Filters
  filteredPlaygroundCount?: number
  onBack: () => void
}

const Stats = ({ playgrounds, visits, filters, filteredPlaygroundCount, onBack }: StatsProps) => {
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

  const hasActiveFilters = (filters: Filters | undefined) => {
    if (!filters) return false
    return (
      filters.visitStatus !== 'all' ||
      filters.minStars !== null ||
      filters.minUserStars !== null ||
      filters.hasSupervised !== null ||
      filters.city !== null
    )
  }

  return (
    <>
      <Text fontSize="lg" fontWeight="bold" color="purple.600" mb={4}>
        {t('stats.title')}
      </Text>
      <VStack gap={4} align="stretch" mb={6}>
        <StatBox
          label={t('stats.total')}
          value={playgrounds?.length || 0}
        />
        {visits && (
          <StatBox
            label={t('stats.visited')}
            value={visits?.length || 0}
          />
        )}
        {filters && filteredPlaygroundCount !== undefined && hasActiveFilters(filters) && (
          <StatBox
            label={t('stats.filtered')}
            value={filteredPlaygroundCount}
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
  )
}

export default Stats
