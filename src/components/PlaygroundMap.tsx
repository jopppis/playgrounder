import { Box, Spinner, Text } from '@chakra-ui/react'
import L from 'leaflet'
import icon from 'leaflet/dist/images/marker-icon.png'
import iconShadow from 'leaflet/dist/images/marker-shadow.png'
import 'leaflet/dist/leaflet.css'
import { MapContainer, Marker, Popup, TileLayer } from 'react-leaflet'
import { usePlaygrounds } from '../hooks/usePlaygrounds'

// Fix for default markers

const DefaultIcon = L.icon({
  iconUrl: icon,
  shadowUrl: iconShadow,
  iconSize: [25, 41],
  iconAnchor: [12, 41]
})
L.Marker.prototype.options.icon = DefaultIcon

const PlaygroundMap = () => {
  const { playgrounds, loading, error } = usePlaygrounds()

  if (loading) {
    return (
      <Box display="flex" justifyContent="center" alignItems="center" h="100vh">
        <Spinner size="xl" />
      </Box>
    )
  }

  if (error) {
    return (
      <Box display="flex" justifyContent="center" alignItems="center" h="100vh">
        <Text color="red.500">{error}</Text>
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
          attribution='&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
          url="https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png"
        />
        {playgrounds.map(playground => (
          <Marker
            key={playground.id}
            position={[playground.latitude, playground.longitude]}
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
