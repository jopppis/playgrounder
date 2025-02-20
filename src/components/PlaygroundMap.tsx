import { Box, Spinner } from '@chakra-ui/react'
import { User } from '@supabase/supabase-js'
import L from 'leaflet'
import 'leaflet/dist/leaflet.css'
import { useCallback, useEffect, useMemo, useRef, useState } from 'react'
import { useTranslation } from 'react-i18next'
import { MapContainer, Marker, Popup, TileLayer, useMap } from 'react-leaflet'
import playgroundIcon from '../assets/playground-icon-optimized.png'
import { useAuth } from '../hooks/useAuth'
import { usePlaygrounds } from '../hooks/usePlaygrounds'
import { useVisits } from '../hooks/useVisits'
import { supabase } from '../lib/supabaseClient'
import { PlaygroundWithCoordinates, Visit } from '../types/database.types'
import { FilterOptions, PlaygroundFilter } from './PlaygroundFilter'
import { PlaygroundPopup } from './PlaygroundPopup'

// Add styles to head
const style = document.createElement('style')
style.textContent = `
  .playground-marker {
    position: relative;
    width: 40px !important;
    height: 40px !important;
    border-radius: 50%;
    background: white;
    padding: 2px;
  }
  .playground-marker.unvisited {
    border: 2px solid var(--chakra-colors-gray-300);
  }
  .playground-marker.visited {
    border: 2px solid var(--chakra-colors-green-500);
  }
  .playground-marker img {
    width: 100%;
    height: 100%;
    border-radius: 50%;
  }
  .playground-marker .badge {
    position: absolute;
    top: -3px;
    right: -3px;
    background-color: var(--chakra-colors-green-500);
    color: white;
    border-radius: 50%;
    width: 16px;
    height: 16px;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 10px;
    font-weight: bold;
    box-shadow: 0 0 0 1.5px white;
  }
`
document.head.appendChild(style)

// Create the base playground icon
const createBaseIcon = (isVisited = false) => {
  return L.divIcon({
    html: `
      <div class="playground-marker ${isVisited ? 'visited' : 'unvisited'}">
        <img src="${playgroundIcon}" alt="playground" />
        ${isVisited ? '<div class="badge">✓</div>' : ''}
      </div>
    `,
    className: '',
    iconSize: [40, 40],
    iconAnchor: [20, 40],
    popupAnchor: [0, -40]
  })
}

// Create the icon instances
const basePlaygroundIcon = createBaseIcon(false)
const visitedPlaygroundIcon = createBaseIcon(true)

// Separate component for playground markers
const PlaygroundMarker = ({ playground, visits, user, visitsLoading, onVisitChange, onRatingChange }: {
  playground: PlaygroundWithCoordinates
  visits: Visit[]
  user: User | null
  visitsLoading: boolean
  onVisitChange: (playgroundId: string, isVisited: boolean) => void
  onRatingChange: () => void
}) => {
  const hasVisited = useMemo(() =>
    visits.some(visit => visit.playground_id === playground.id),
    [visits, playground.id]
  )

  const icon = useMemo(() => {
    if (!user || visitsLoading) {
      return basePlaygroundIcon
    }
    return hasVisited ? visitedPlaygroundIcon : basePlaygroundIcon
  }, [user, visitsLoading, hasVisited])

  const popupRef = useRef<L.Popup>(null)

  const updatePopup = useCallback(() => {
    if (popupRef.current) {
      popupRef.current.update()
    }
  }, [])

  // Update popup when visit status changes
  useEffect(() => {
    updatePopup()
  }, [hasVisited, updatePopup])

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
          onVisitChange={(isVisited) => onVisitChange(playground.id, isVisited)}
          onContentChange={updatePopup}
          onRatingChange={onRatingChange}
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
  }, [])

  useEffect(() => {
    isInitialized.current = false
    map.on('locationfound', handleLocationFound)
    map.on('locationerror', handleLocationError)

    // Clean up
    return () => {
      map.off('locationfound', handleLocationFound)
      map.off('locationerror', handleLocationError)
    }
  }, [map, handleLocationFound, handleLocationError])

  // Handle initial location and custom events
  useEffect(() => {
    const handleInitialLocation = (e: CustomEvent<{ lat: number; lng: number }>) => {
      const { lat, lng } = e.detail
      setUserLocation([lat, lng])
      lastKnownPosition.current = [lat, lng]
      isInitialized.current = true
    }

    // @ts-expect-error Custom event type not recognized by leaflet types
    map.on('initialLocationFound', handleInitialLocation)

    return () => {
      // @ts-expect-error Custom event type not recognized by leaflet types
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
      button.style.color = 'gray.600'
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
            background-color: var(--chakra-colors-brand-500);
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

interface PlaygroundRating {
  playground_id: string
  avg_rating: number | null
  total_ratings: number
  user_rating: number | null
}

const PlaygroundMap = () => {
  const { t } = useTranslation()
  const { user } = useAuth()
  const { playgrounds, loading: playgroundsLoading } = usePlaygrounds()
  const { visits, loading: visitsLoading, updateVisitsState } = useVisits()
  const [ratings, setRatings] = useState<PlaygroundRating[]>([])
  const [filters, setFilters] = useState<FilterOptions>({
    visitStatus: 'all',
    minStars: null,
    minUserStars: null,
    hasSupervised: null
  })
  const mapRef = useRef<L.Map | null>(null)

  // Create a fetchRatings function that can be called from child components
  const fetchRatings = useCallback(async () => {
    const { data, error } = await supabase
      .from('playground_ratings')
      .select('playground_id, avg_rating, total_ratings')

    if (!error && data) {
      // If user is logged in, fetch their ratings
      let userRatings: { [key: string]: number } = {}
      if (user) {
        const { data: userRatingsData } = await supabase
          .from('ratings')
          .select('playground_id, rating')
          .eq('user_id', user.id)

        if (userRatingsData) {
          userRatings = Object.fromEntries(
            userRatingsData.map(r => [r.playground_id, r.rating])
          )
        }
      }

      // Combine public ratings with user ratings
      setRatings(data.map(r => ({
        ...r,
        user_rating: userRatings[r.playground_id] || null
      })))
    }
  }, [user])

  // Fetch ratings when playgrounds change or when explicitly requested
  useEffect(() => {
    fetchRatings()
  }, [fetchRatings, playgrounds])

  // Helsinki center coordinates (Senate Square area)
  const helsinkiCenter: [number, number] = [60.170887, 24.952347]

  const filteredPlaygrounds = useMemo(() => {
    if (!playgrounds) return []

    return playgrounds.filter(playground => {
      // Filter by supervised activities
      if (filters.hasSupervised !== null && playground.has_supervised_activities !== filters.hasSupervised) {
        return false
      }

      // Filter by visit status
      if (user && filters.visitStatus !== 'all') {
        const hasVisited = visits.some(visit => visit.playground_id === playground.id)
        if (filters.visitStatus === 'visited' && !hasVisited) return false
        if (filters.visitStatus === 'unvisited' && hasVisited) return false
      }

      // Filter by public star rating
      if (filters.minStars !== null) {
        const rating = ratings.find(r => r.playground_id === playground.id)
        // Hide unrated playgrounds or those with rating below the minimum
        if (!rating?.avg_rating || rating.avg_rating < filters.minStars) {
          return false
        }
      }

      // Filter by user's own rating
      if (user && filters.minUserStars !== null) {
        const userRating = ratings.find(r => r.playground_id === playground.id)?.user_rating
        // Hide unrated playgrounds or those with user rating below the minimum
        if (!userRating || userRating < filters.minUserStars) {
          return false
        }
      }

      return true
    })
  }, [playgrounds, filters, user, visits, ratings])

  if (playgroundsLoading || visitsLoading) {
    return (
      <Box height="100vh" display="flex" alignItems="center" justifyContent="center">
        <Spinner size="xl" color="brand.500" />
      </Box>
    )
  }

  return (
    <Box position="relative" height="100%" width="100%">
      <PlaygroundFilter filters={filters} onChange={setFilters} />
      <MapContainer
        center={helsinkiCenter}
        zoom={13.5}
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
            onVisitChange={updateVisitsState}
            onRatingChange={fetchRatings}
          />
        ))}
      </MapContainer>
    </Box>
  )
}

export default PlaygroundMap
