import { Box, Button, Text } from '@chakra-ui/react'
import L from 'leaflet'
import { memo, useCallback, useEffect, useState } from 'react'
import { useTranslation } from 'react-i18next'
import { BBox } from '../hooks/usePlaygrounds'
import { PlaygroundWithCoordinates } from '../types/database.types'

interface NoVisiblePlaygroundsProps {
  map: L.Map
  playgrounds: PlaygroundWithCoordinates[]
  filteredPlaygrounds: PlaygroundWithCoordinates[]
  refreshPlaygrounds: (bbox: BBox | null, zoomLevel: number) => Promise<void>
}

const NoVisiblePlaygrounds = memo(({
  map,
  playgrounds,
  filteredPlaygrounds,
  refreshPlaygrounds
}: NoVisiblePlaygroundsProps) => {
  const { t } = useTranslation()
  const [isVisible, setIsVisible] = useState(false)
  const [isFetching, setIsFetching] = useState(false)

  useEffect(() => {
    const checkVisibility = () => {
      // If there are no filtered playgrounds at all, show the message
      if (filteredPlaygrounds.length === 0 && playgrounds.length > 0) {
        setIsVisible(true)
        return
      }

      // Otherwise, check if any filtered playgrounds are in the current view
      const bounds = map.getBounds()
      const hasVisiblePlaygrounds = filteredPlaygrounds.some(playground =>
        bounds.contains([playground.latitude, playground.longitude])
      )
      setIsVisible(!hasVisiblePlaygrounds && playgrounds.length > 0 && filteredPlaygrounds.length > 0)
    }

    // Check initial visibility
    checkVisibility()

    // Add event listeners for map movements
    map.on('moveend', checkVisibility)
    map.on('zoomend', checkVisibility)

    // Cleanup
    return () => {
      map.off('moveend', checkVisibility)
      map.off('zoomend', checkVisibility)
    }
  }, [map, playgrounds, filteredPlaygrounds])

  // Fetch all playgrounds when component becomes visible
  useEffect(() => {
    const fetchAllPlaygrounds = async () => {
      if (isVisible && !isFetching) {
        setIsFetching(true)
        try {
          await refreshPlaygrounds(null, 0)
        } finally {
          setIsFetching(false)
        }
      }
    }
    fetchAllPlaygrounds()
  }, [isVisible, isFetching, refreshPlaygrounds])

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

  if (!isVisible) {
    return null
  }

  return (
    <Box
      position="fixed"
      bottom={4}
      left="50%"
      transform="translateX(-50%)"
      bg="white"
      p={4}
      borderRadius="md"
      boxShadow="lg"
      zIndex={1000}
      textAlign="center"
      maxWidth="90%"
      width="auto"
      border="1px solid"
      borderColor="brand.100"
    >
      <Text mb={3} color="gray.700">
        {filteredPlaygrounds.length === 0
          ? t('map.noPlaygroundsMatchFilters')
          : t('map.noVisiblePlaygrounds')
        }
      </Text>
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
  )
})

export default NoVisiblePlaygrounds
