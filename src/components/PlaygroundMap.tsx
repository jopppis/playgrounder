import { Box, Spinner, Text } from '@chakra-ui/react'
import L from 'leaflet'
import 'leaflet/dist/leaflet.css'
import { useCallback, useEffect, useMemo, useRef, useState } from 'react'
import { useTranslation } from 'react-i18next'
import { MapContainer, Marker, Popup, TileLayer } from 'react-leaflet'
import blueIcon from '../assets/playground-icon-blue.svg'
import greenIcon from '../assets/playground-icon-green.svg'
import redIcon from '../assets/playground-icon-red.svg'
import { useAuth } from '../hooks/useAuth'
import { usePlaygrounds } from '../hooks/usePlaygrounds'
import { useVisits } from '../hooks/useVisits'
import { PlaygroundWithCoordinates } from '../types/database.types'
import { PlaygroundPopup } from './PlaygroundPopup'

// Create icons for different states
const createPlaygroundIcon = (iconUrl: string) => {
  return L.icon({
    iconUrl,
    iconSize: [40, 40],
    iconAnchor: [20, 40],
    popupAnchor: [0, -40]
  })
}

// Create the three icon variants
const bluePlaygroundIcon = createPlaygroundIcon(blueIcon)
const greenPlaygroundIcon = createPlaygroundIcon(greenIcon)
const redPlaygroundIcon = createPlaygroundIcon(redIcon)

// Separate component for playground markers
const PlaygroundMarker = ({ playground, visits, user, visitsLoading, onVisitChange }: {
  playground: PlaygroundWithCoordinates
  visits: any[]
  user: any | null
  visitsLoading: boolean
  onVisitChange: (playgroundId: string, isVisited: boolean) => void
}) => {
  const icon = useMemo(() => {
    if (!user || visitsLoading) {
      return bluePlaygroundIcon
    }
    const hasVisited = visits.some(visit => visit.playground_id === playground.id)
    return hasVisited ? greenPlaygroundIcon : redPlaygroundIcon
  }, [playground.id, visits, user, visitsLoading])

  const popupRef = useRef<L.Popup>(null)

  const updatePopup = useCallback(() => {
    if (popupRef.current) {
      popupRef.current.update()
    }
  }, [])

  return (
    <Marker
      position={[playground.latitude, playground.longitude]}
      icon={icon}
    >
      <Popup
        ref={popupRef}
        autoPan={true}
        autoPanPadding={[50, 50]}
      >
        <PlaygroundPopup
          playground={playground}
          onClose={() => {
            const map = document.querySelector('.leaflet-popup-close-button') as HTMLElement
            map?.click()
          }}
          onVisitChange={(isVisited) => onVisitChange(playground.id, isVisited)}
          onContentChange={updatePopup}
        />
      </Popup>
    </Marker>
  )
}

const PlaygroundMap = () => {
  const { t } = useTranslation()
  const { playgrounds, loading: playgroundsLoading, error: playgroundsError } = usePlaygrounds()
  const { user } = useAuth()
  const { visits: initialVisits, loading: visitsLoading } = useVisits()
  const [visits, setVisits] = useState(initialVisits)

  useEffect(() => {
    setVisits(initialVisits)
  }, [initialVisits])

  const handleVisitChange = (playgroundId: string, isVisited: boolean) => {
    setVisits(prevVisits => {
      if (isVisited) {
        // Add visit
        return [...prevVisits, {
          id: `temp-${playgroundId}`,
          playground_id: playgroundId,
          user_id: user?.id || '',
          visited_at: new Date().toISOString(),
          notes: null
        }]
      } else {
        // Remove visit
        return prevVisits.filter(visit => visit.playground_id !== playgroundId)
      }
    })
  }

  if (playgroundsLoading || visitsLoading) {
    return (
      <Box display="flex" justifyContent="center" alignItems="center" h="100vh">
        <Spinner size="xl" />
      </Box>
    )
  }

  if (playgroundsError) {
    return (
      <Box display="flex" justifyContent="center" alignItems="center" h="100vh">
        <Text color="red.500">{playgroundsError}</Text>
      </Box>
    )
  }

  // Calculate center based on first playground or default to New York
  const center: [number, number] = playgrounds.length > 0
    ? [playgrounds[0].latitude, playgrounds[0].longitude]
    : [40.785091, -73.968285]

  return (
    <Box position="absolute" top={0} left={0} right={0} bottom={0}>
      <MapContainer
        center={center}
        zoom={13}
        style={{ height: '100%', width: '100%' }}
      >
        <TileLayer
          attribution={t('map.attribution')}
          url="https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png"
        />
        {playgrounds.map(playground => (
          <PlaygroundMarker
            key={playground.id}
            playground={playground}
            visits={visits}
            user={user}
            visitsLoading={visitsLoading}
            onVisitChange={handleVisitChange}
          />
        ))}
      </MapContainer>
    </Box>
  )
}

export default PlaygroundMap
