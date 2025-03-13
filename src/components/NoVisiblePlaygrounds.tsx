import { Box, Button, Text } from '@chakra-ui/react'
import L from 'leaflet'
import { memo, useCallback, useEffect, useState } from 'react'
import { useTranslation } from 'react-i18next'
import { PlaygroundWithCoordinates } from '../types/database.types'

interface NoVisiblePlaygroundsProps {
  map: L.Map
  playgrounds: PlaygroundWithCoordinates[]
  filteredPlaygrounds: PlaygroundWithCoordinates[]
  onNoVisiblePlaygrounds: () => Promise<void>
  onClearFilters: () => void
  isLoading: boolean
}

const NoVisiblePlaygrounds = memo(({
  map,
  playgrounds,
  filteredPlaygrounds,
  onNoVisiblePlaygrounds,
  onClearFilters,
  isLoading
}: NoVisiblePlaygroundsProps) => {
  const { t } = useTranslation()
  const [isVisible, setIsVisible] = useState(false)
  const [hasFetched, setHasFetched] = useState(false)

  const noPlaygroundsAtAll = filteredPlaygrounds.length === 0

  // Handle visibility of the popup
  useEffect(() => {
    const checkVisibility = async () => {
      // Don't show anything while loading
      if (isLoading) {
        setIsVisible(false)
        return
      }

      // If we haven't fetched yet and there are no visible playgrounds, trigger fetch
      const bounds = map.getBounds()
      const hasVisiblePlaygrounds = filteredPlaygrounds.some(playground =>
        bounds.contains([playground.latitude, playground.longitude])
      )

      if (!hasVisiblePlaygrounds && !hasFetched) {
        await onNoVisiblePlaygrounds()
        setHasFetched(true)
        return
      }

      // After fetch, check visibility again
      if (filteredPlaygrounds.length === 0 && playgrounds.length > 0) {
        setIsVisible(true)
        return
      }
      const shouldShow = !hasVisiblePlaygrounds && playgrounds.length > 0 && filteredPlaygrounds.length > 0
      setIsVisible(shouldShow)
    }

    checkVisibility()

    map.on('moveend', checkVisibility)
    map.on('zoomend', checkVisibility)

    return () => {
      map.off('moveend', checkVisibility)
      map.off('zoomend', checkVisibility)
    }
  }, [map, playgrounds, filteredPlaygrounds, onNoVisiblePlaygrounds, isLoading, hasFetched])

  const handleZoomToPlaygrounds = useCallback(() => {
    if (filteredPlaygrounds.length > 0) {
      const allBounds = L.latLngBounds(
        filteredPlaygrounds.map(playground => [playground.latitude, playground.longitude])
      )
      map.fitBounds(allBounds, {
        padding: [50, 50],
        maxZoom: 16,
        animate: true,
        duration: 1
      })
    }
  }, [map, filteredPlaygrounds])

  if (!isVisible || isLoading) {
    return null
  }

  return (
    <Box
      position="fixed"
      bottom={4}
      left="50%"
      transform="translateX(-50%)"
      bg={noPlaygroundsAtAll ? 'red.500' : 'white'}
      p={4}
      borderRadius="md"
      boxShadow="lg"
      zIndex={1000}
      textAlign="center"
      maxWidth="90%"
      width="auto"
      border="0px"
    >
      <Text
        mb={3}
        color={noPlaygroundsAtAll ? 'gray.900' : 'gray.700'}
      >
        {noPlaygroundsAtAll
          ? t('map.noPlaygroundsMatchFilters')
          : t('map.noVisiblePlaygrounds')
        }
      </Text>
      <Box display="flex" flexDirection={noPlaygroundsAtAll ? "column" : "row"} gap={2} justifyContent="center">
        {noPlaygroundsAtAll && (
          <Button
            onClick={onClearFilters}
            bg="white"
            color="red.500"
            size="sm"
            _hover={{
              bg: 'gray.100',
              transform: 'translateY(-2px)',
              boxShadow: 'sm'
            }}
            _active={{
              bg: 'gray.200',
              transform: 'translateY(0)'
            }}
            transition="all 0.2s"
            boxShadow="base"
          >
            {t('common.clearFilters')}
          </Button>
        )}
        {filteredPlaygrounds.length > 0 && (
          <Button
            onClick={handleZoomToPlaygrounds}
            bg="brand.500"
            color="white"
            size="sm"
            _hover={{
              bg: 'secondary.500',
              transform: 'translateY(-2px)',
              boxShadow: 'sm'
            }}
            _active={{
              bg: 'brand.600',
              transform: 'translateY(0)'
            }}
            transition="all 0.2s"
            boxShadow="base"
          >
            {t('map.zoomToPlaygrounds')}
          </Button>
        )}
      </Box>
    </Box>
  )
})

export default NoVisiblePlaygrounds
