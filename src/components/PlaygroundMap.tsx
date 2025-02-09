import { Box, Spinner, Text } from '@chakra-ui/react'
import L from 'leaflet'
import 'leaflet/dist/leaflet.css'
import { useCallback, useEffect, useMemo, useRef, useState } from 'react'
import { useTranslation } from 'react-i18next'
import { MapContainer, Marker, Popup, TileLayer, useMap } from 'react-leaflet'
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

// Location control component
const LocationControl = () => {
  const map = useMap()
  const { t } = useTranslation()
  const [userLocation, setUserLocation] = useState<[number, number] | null>(null)
  const lastKnownPosition = useRef<[number, number] | null>(null)
  const isInitialized = useRef(false)

  const handleLocationFound = useCallback((e: L.LocationEvent) => {
    const { lat, lng } = e.latlng
    const newLocation: [number, number] = [lat, lng]
    setUserLocation(newLocation)
    lastKnownPosition.current = newLocation
    if (!isInitialized.current) {
      map.setView(newLocation, 13.5)
      isInitialized.current = true
    }
  }, [map])

  const handleLocationError = useCallback((e: L.ErrorEvent) => {
    console.error('Location error:', e.message)
    isInitialized.current = true
  }, [])

  const showLocation = useCallback((location: [number, number]) => {
    setUserLocation(location)
    map.setView(location, 13.5)
  }, [map])

  // Request location immediately on mount
  useEffect(() => {
    isInitialized.current = false
    map.on('locationfound', handleLocationFound)
    map.on('locationerror', handleLocationError)

    // Request location immediately
    map.locate({ setView: false, watch: false })

    // Clean up
    return () => {
      map.off('locationfound', handleLocationFound)
      map.off('locationerror', handleLocationError)
    }
  }, [map, handleLocationFound, handleLocationError])

  // Handle initial location and custom events
  useEffect(() => {
    const handleInitialLocation = (e: any) => {
      const { lat, lng } = e.detail
      setUserLocation([lat, lng])
      lastKnownPosition.current = [lat, lng]
      isInitialized.current = true
    }

    // @ts-ignore
    map.on('initialLocationFound', handleInitialLocation)

    return () => {
      // @ts-ignore
      map.off('initialLocationFound', handleInitialLocation)
    }
  }, [map])

  // Add location control button
  useEffect(() => {
    const locationControl = new L.Control({ position: 'topleft' })

    locationControl.onAdd = () => {
      const div = L.DomUtil.create('div', 'leaflet-bar leaflet-control')
      const button = L.DomUtil.create('a', '', div)
      button.href = '#'
      button.title = t('map.showMyLocation')
      button.style.width = '34px'
      button.style.height = '34px'
      button.style.lineHeight = '34px'
      button.style.display = 'flex'
      button.style.alignItems = 'center'
      button.style.justifyContent = 'center'
      button.style.color = '#444'
      button.style.backgroundColor = 'white'
      button.style.fontSize = '18px'
      button.innerHTML = `
        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="18" height="18">
          <circle cx="12" cy="12" r="9" stroke="currentColor" stroke-width="2" fill="none"/>
          <circle cx="12" cy="12" r="4" fill="currentColor"/>
          <line x1="12" y1="1" x2="12" y2="3" stroke="currentColor" stroke-width="2"/>
          <line x1="12" y1="21" x2="12" y2="23" stroke="currentColor" stroke-width="2"/>
          <line x1="1" y1="12" x2="3" y2="12" stroke="currentColor" stroke-width="2"/>
          <line x1="21" y1="12" x2="23" y2="12" stroke="currentColor" stroke-width="2"/>
        </svg>
      `

      L.DomEvent.on(button, 'click', (e) => {
        L.DomEvent.preventDefault(e)
        map.locate({ setView: true, maxZoom: 14, watch: false })
      })

      return div
    }

    locationControl.addTo(map)

    return () => {
      locationControl.remove()
    }
  }, [map, t])

  return userLocation ? (
    <Marker
      position={userLocation}
      icon={L.divIcon({
        html: `
          <div style="
            background-color: #4A90E2;
            width: 18px;
            height: 18px;
            border-radius: 50%;
            border: 3px solid white;
            box-shadow: 0 0 4px rgba(0,0,0,0.4);
          "></div>
        `,
        iconSize: [18, 18],
        iconAnchor: [9, 9],
        className: 'user-location-marker'
      })}
      zIndexOffset={1000}
    />
  ) : null
}

interface PlaygroundMapProps {
  selectedServiceLevel: number | null
}

const PlaygroundMap = ({ selectedServiceLevel }: PlaygroundMapProps) => {
  const { t } = useTranslation()
  const { playgrounds, loading: playgroundsLoading, error: playgroundsError } = usePlaygrounds()
  const { user } = useAuth()
  const { visits: initialVisits, loading: visitsLoading } = useVisits()
  const [visits, setVisits] = useState(initialVisits)
  const mapRef = useRef<L.Map | null>(null)
  const initialPositionSet = useRef(false)

  // Helsinki center coordinates (Senate Square area)
  const helsinkiCenter: [number, number] = [60.170887, 24.952347]

  useEffect(() => {
    setVisits(initialVisits)
  }, [initialVisits])

  // Filter playgrounds based on selected service level
  const filteredPlaygrounds = useMemo(() => {
    if (selectedServiceLevel === null) return playgrounds
    return playgrounds.filter(p => p.service_level === selectedServiceLevel)
  }, [playgrounds, selectedServiceLevel])

  // Handle initial map position
  useEffect(() => {
    if (!mapRef.current || playgroundsLoading || visitsLoading || initialPositionSet.current) return

    // Find last visited playground
    const lastVisit = visits
      .sort((a, b) => new Date(b.visited_at).getTime() - new Date(a.visited_at).getTime())[0]

    const lastVisitedPlayground = lastVisit
      ? playgrounds.find(p => p.id === lastVisit.playground_id)
      : null

    if (lastVisitedPlayground) {
      // Zoom to last visited playground
      mapRef.current.setView(
        [lastVisitedPlayground.latitude, lastVisitedPlayground.longitude],
        13.5
      )
      initialPositionSet.current = true
    } else {
      // Start with Helsinki center
      mapRef.current.setView(helsinkiCenter, 13.5)

      // Try to get user location with timeout
      if ('geolocation' in navigator) {
        const timeoutId = setTimeout(() => {
          // If location not obtained within 5s, do nothing (keep Helsinki center)
          mapRef.current?.off('locationfound')
          mapRef.current?.off('locationerror')
          initialPositionSet.current = true
        }, 5000)

        const handleLocationFound = (e: L.LocationEvent) => {
          clearTimeout(timeoutId)
          const { lat, lng } = e.latlng
          mapRef.current?.setView([lat, lng], 13.5)
          // Use custom event instead of locationfound
          mapRef.current?.fire('initialLocationFound', { detail: { lat, lng } })
          mapRef.current?.off('locationfound', handleLocationFound)
          mapRef.current?.off('locationerror', handleLocationError)
          initialPositionSet.current = true
        }

        const handleLocationError = () => {
          clearTimeout(timeoutId)
          mapRef.current?.off('locationfound', handleLocationFound)
          mapRef.current?.off('locationerror', handleLocationError)
          initialPositionSet.current = true
        }

        mapRef.current.on('locationfound', handleLocationFound)
        mapRef.current.on('locationerror', handleLocationError)
        mapRef.current.locate()
      } else {
        initialPositionSet.current = true
      }
    }
  }, [playgrounds, visits, playgroundsLoading, visitsLoading])

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
      <Box height="100vh" display="flex" alignItems="center" justifyContent="center">
        <Spinner size="xl" color="blue.500" />
      </Box>
    )
  }

  if (playgroundsError) {
    return (
      <Box height="100vh" display="flex" alignItems="center" justifyContent="center">
        <Text color="red.500">{playgroundsError}</Text>
      </Box>
    )
  }

  return (
    <Box position="relative" height="100vh">
      <MapContainer
        center={helsinkiCenter}
        zoom={11}
        style={{ height: '100%', width: '100%' }}
        ref={mapRef}
      >
        <TileLayer
          attribution={t('map.attribution')}
          url="https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png"
        />
        <LocationControl />
        {filteredPlaygrounds.map((playground) => (
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
