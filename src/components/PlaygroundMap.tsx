import { Box, Spinner, Text } from '@chakra-ui/react'
import L from 'leaflet'
import 'leaflet/dist/leaflet.css'
import { MapContainer, Marker, Popup, TileLayer } from 'react-leaflet'
import blueIcon from '../assets/playground-icon-blue.svg'
import greenIcon from '../assets/playground-icon-green.svg'
import redIcon from '../assets/playground-icon-red.svg'
import { useAuth } from '../hooks/useAuth'
import { usePlaygrounds } from '../hooks/usePlaygrounds'
import { useVisits } from '../hooks/useVisits'

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

const PlaygroundMap = () => {
  const { playgrounds, loading: playgroundsLoading, error: playgroundsError } = usePlaygrounds()
  const { user } = useAuth()
  const { visits, loading: visitsLoading } = useVisits()

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

  const getPlaygroundIcon = (playgroundId: string) => {
    // If user is not logged in or visits are still loading, show blue icon
    if (!user || visitsLoading) {
      return bluePlaygroundIcon
    }

    const hasVisited = visits.some(visit => visit.playground_id === playgroundId)
    return hasVisited ? greenPlaygroundIcon : redPlaygroundIcon
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
          attribution='&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
          url="https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png"
        />
        {playgrounds.map(playground => (
          <Marker
            key={playground.id}
            position={[playground.latitude, playground.longitude]}
            icon={getPlaygroundIcon(playground.id)}
          >
            <Popup>
              <Box p={1}>
                <Text fontWeight="bold">{playground.name}</Text>
                {playground.description && (
                  <Text fontSize="sm">{playground.description}</Text>
                )}
                {playground.address && (
                  <Text fontSize="sm" color="gray.600">
                    {playground.address}
                  </Text>
                )}
              </Box>
            </Popup>
          </Marker>
        ))}
      </MapContainer>
    </Box>
  )
}

export default PlaygroundMap
