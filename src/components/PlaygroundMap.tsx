import { Box, Button, Spinner } from '@chakra-ui/react'
import { User } from '@supabase/supabase-js'
import L from 'leaflet'
import 'leaflet/dist/leaflet.css'
import { useCallback, useEffect, useMemo, useRef, useState } from 'react'
import { useTranslation } from 'react-i18next'
import { CircleMarker, LayersControl, MapContainer, Marker, Popup, TileLayer, useMap, useMapEvents } from 'react-leaflet'
import { useLocation } from 'react-router-dom'
import playgroundIcon from '../assets/playground-icon-optimized.png'
import { useAuth } from '../hooks/useAuth'
import { useCurrentCity } from '../hooks/useCurrentCity'
import { usePlaygrounds } from '../hooks/usePlaygrounds'
import { useUserFilters } from '../hooks/useUserFilters'
import { useVisits } from '../hooks/useVisits'
import { supabase } from '../lib/supabaseClient'
import { PlaygroundWithCoordinates, Visit } from '../types/database.types'
import MenuDrawer from './MenuDrawer'
import { PlaygroundFilter } from './PlaygroundFilter'
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

  /* Make layer control match other controls */
  .leaflet-control-layers {
    border-radius: 4px;
    box-shadow: 0 1px 5px rgba(0,0,0,0.4);
  }
  .leaflet-control-layers-toggle {
    width: 40px !important;
    height: 40px !important;
    background-size: 20px 20px;
  }
  .leaflet-touch .leaflet-control-layers-toggle {
    width: 40px !important;
    height: 40px !important;
  }

  /* Increase zoom control size */
  .leaflet-control-zoom a {
    width: 40px !important;
    height: 40px !important;
    line-height: 40px !important;
    font-size: 18px !important;
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
const PlaygroundMarker = ({ playground, visits, user, visitsLoading, onVisitChange, onRatingChange, useCircle = false, zoomLevel }: {
  playground: PlaygroundWithCoordinates
  visits: Visit[]
  user: User | null
  visitsLoading: boolean
  onVisitChange: (playgroundId: string, isVisited: boolean) => void
  onRatingChange: () => void
  useCircle?: boolean
  zoomLevel: number
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

  // Calculate circle radius based on zoom level
  const getCircleRadius = useCallback((zoom: number) => {
    // Base size at zoom level 13
    const baseRadius = 15;

    if (zoom <= 10) return baseRadius * 0.5;  // Very zoomed out
    if (zoom <= 12) return baseRadius * 0.7;  // Zoomed out
    if (zoom <= 14) return baseRadius;        // Default zoom
    if (zoom <= 16) return baseRadius * 1.3;  // Zoomed in
    return baseRadius * 1.5;                  // Very zoomed in
  }, []);

  // Calculate border weight based on zoom level
  const getBorderWeight = useCallback((zoom: number) => {
    if (zoom <= 12) return 1;
    if (zoom <= 15) return 2;
    return 3;
  }, []);

  if (useCircle) {
    // Use direct hex color values instead of CSS variables
    return (
      <CircleMarker
        center={[playground.latitude, playground.longitude]}
        radius={getCircleRadius(zoomLevel)}
        fillColor="#FEC601"
        color={hasVisited ? "#38A169" : "#CBD5E0"} // Green for visited, gray for unvisited
        weight={getBorderWeight(zoomLevel)}
        opacity={1}
        fillOpacity={0.9}
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
      </CircleMarker>
    )
  }

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
const LocationControl = ({ onLocationUpdate }: { onLocationUpdate: (lat: number, lng: number) => void }) => {
  const map = useMap()
  const { t } = useTranslation()
  const [userLocation, setUserLocation] = useState<[number, number] | null>(null)
  const isInitialized = useRef(false)
  const [isPopupOpen, setIsPopupOpen] = useState(false)

  // Add zoom control to bottom right
  useEffect(() => {
    const zoomControl = L.control.zoom({ position: 'bottomright' })
    zoomControl.addTo(map)

    return () => {
      zoomControl.remove()
    }
  }, [map])

  // Track popup open/close state
  useEffect(() => {
    const handlePopupOpen = () => {
      setIsPopupOpen(true)
    }

    const handlePopupClose = () => {
      setIsPopupOpen(false)
    }

    map.on('popupopen', handlePopupOpen)
    map.on('popupclose', handlePopupClose)

    return () => {
      map.off('popupopen', handlePopupOpen)
      map.off('popupclose', handlePopupClose)
    }
  }, [map])

  const handleLocationFound = useCallback((e: L.LocationEvent) => {
    const { lat, lng } = e.latlng
    const newLocation: [number, number] = [lat, lng]

    setUserLocation(newLocation)
    onLocationUpdate(lat, lng)

    if (!isInitialized.current && !isPopupOpen) {
      map.setView(newLocation, 14)
      isInitialized.current = true
    }
  }, [map, onLocationUpdate, isPopupOpen])

  const handleLocationError = useCallback((e: L.ErrorEvent) => {
    console.error('Location error:', e.message)
  }, [])

  useEffect(() => {
    isInitialized.current = false
    map.on('locationfound', handleLocationFound)
    map.on('locationerror', handleLocationError)

    // Request location on mount
    map.locate({ setView: false, maxZoom: 10, watch: false })

    // Clean up
    return () => {
      map.off('locationfound', handleLocationFound)
      map.off('locationerror', handleLocationError)
    }
  }, [map, handleLocationFound, handleLocationError])


  // Add location control button
  useEffect(() => {
    const locationControl = new L.Control({ position: 'bottomright' })

    locationControl.onAdd = () => {
      const div = L.DomUtil.create('div', 'leaflet-bar leaflet-control')
      const button = L.DomUtil.create('a', '', div)
      button.href = '#'
      button.title = t('map.showMyLocation')
      button.style.width = '40px'
      button.style.height = '40px'
      button.style.lineHeight = '40px'
      button.style.display = 'flex'
      button.style.alignItems = 'center'
      button.style.justifyContent = 'center'
      button.style.color = 'gray.600'
      button.style.backgroundColor = 'white'
      button.style.fontSize = '18px'
      button.innerHTML = `
        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="22" height="22">
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

        // Always set view when user clicks the location button
        if (userLocation) {
          map.setView(userLocation, 14)
        }
        map.locate({ setView: true, maxZoom: 14, watch: false })
      })

      return div
    }

    locationControl.addTo(map)

    return () => {
      locationControl.remove()
    }
  }, [map, t, userLocation])

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

// Component to track map zoom level
const ZoomTracker = ({ onZoomChange }: { onZoomChange: (zoom: number) => void }) => {
  const map = useMapEvents({
    zoomend: () => {
      onZoomChange(map.getZoom())
    },
    load: () => {
      onZoomChange(map.getZoom())
    }
  })

  // Set initial zoom
  useEffect(() => {
    onZoomChange(map.getZoom())
  }, [map, onZoomChange])

  return null
}

const PlaygroundMap = () => {
  const { t } = useTranslation()
  const { user } = useAuth()
  const { playgrounds, loading: playgroundsLoading } = usePlaygrounds()
  const { visits, loading: visitsLoading, updateVisitsState } = useVisits()
  const { filters, loading: filtersLoading, updateFilters } = useUserFilters()
  const { currentCity, updateCurrentCity } = useCurrentCity()
  const [ratings, setRatings] = useState<PlaygroundRating[]>([])
  const [showSignIn, setShowSignIn] = useState(false)
  const [isMenuOpen, setIsMenuOpen] = useState(false)
  const mapRef = useRef<L.Map | null>(null)
  const location = useLocation()
  const [zoomLevel, setZoomLevel] = useState<number>(13)

  useEffect(() => {
    // Check for email confirmation redirect
    const searchParams = new URLSearchParams(location.search)
    if (searchParams.has('email_confirm') || location.pathname === '/signin') {
      setShowSignIn(true)
    }
  }, [location])

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
      // Filter by city
      if (filters.city !== null && playground.city?.toLowerCase() !== filters.city) {
        return false
      }

      // Filter by supervised activities
      if (filters.hasSupervised !== null && playground.has_supervised_activities !== filters.hasSupervised) {
        return false
      }

      // Filter by visit status
      if (user && filters.visitStatus !== null) {
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

      // Filter for playgrounds with no rating
      if (filters.noRating === true) {
        const rating = ratings.find(r => r.playground_id === playground.id)
        // Only show playgrounds with no rating
        if (rating?.avg_rating) {
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

      // Filter for playgrounds with no user rating
      if (user && filters.noUserRating === true) {
        const userRating = ratings.find(r => r.playground_id === playground.id)?.user_rating
        // Only show playgrounds with no user rating
        if (userRating) {
          return false
        }
      }

      return true
    })
  }, [playgrounds, filters, user, visits, ratings])

  // Handle zoom level change
  const handleZoomChange = useCallback((zoom: number) => {
    setZoomLevel(zoom)
  }, [])

  if (playgroundsLoading || visitsLoading || filtersLoading) {
    return (
      <Box height="100dvh" display="flex" alignItems="center" justifyContent="center">
        <Spinner size="xl" color="brand.500" />
      </Box>
    )
  }

  return (
    <Box position="relative" height="100%" width="100%">
      <PlaygroundFilter filters={filters} onChange={updateFilters} />
      <Box position="fixed" top={4} right={4} zIndex={2200}>
        <Button
          size="md"
          variant="solid"
          onClick={() => setIsMenuOpen(!isMenuOpen)}
          bg="brand.500"
          color="white"
          border="1px solid"
          borderColor="brand.500"
          _hover={{
            bg: 'secondary.500',
            transform: 'translateY(-2px)',
            borderColor: 'secondary.500'
          }}
          _active={{
            bg: 'brand.500',
            transform: 'translateY(0)'
          }}
          transition="all 0.2s"
          boxShadow="md"
          borderRadius="md"
          fontSize="xl"
        >
          ≡
        </Button>
      </Box>
      <MenuDrawer
        isOpen={isMenuOpen}
        onClose={() => setIsMenuOpen(false)}
        showSignIn={showSignIn}
        setShowSignIn={setShowSignIn}
        filters={filters}
        filteredPlaygroundCount={filteredPlaygrounds.length}
        currentCity={currentCity}
        visits={visits}
      />
      <MapContainer
        center={helsinkiCenter}
        zoom={13.5}
        style={{ height: '100%', width: '100%' }}
        ref={mapRef}
        zoomControl={false}
        preferCanvas={true}
      >
        <ZoomTracker onZoomChange={handleZoomChange} />
        <LayersControl position="bottomright">
          <LayersControl.BaseLayer checked name={t('map.standard') || 'Standard'}>
            <TileLayer
              attribution='&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors &copy; <a href="https://carto.com/attributions">CARTO</a>'
              url="https://{s}.basemaps.cartocdn.com/rastertiles/voyager/{z}/{x}/{y}{r}.png"
              maxZoom={19}
            />
          </LayersControl.BaseLayer>
          <LayersControl.BaseLayer name={t('map.osm') || 'OpenStreetMap'}>
            <TileLayer
              attribution='&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
              url="https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png"
              maxZoom={19}
            />
          </LayersControl.BaseLayer>
          <LayersControl.BaseLayer name={t('map.aerial') || 'Aerial'}>
            <TileLayer
              attribution="Tiles &copy; Esri &mdash; Source: Esri, i-cubed, USDA, USGS, AEX, GeoEye, Getmapping, Aerogrid, IGN, IGP, UPR-EGP, and the GIS User Community"
              url="https://server.arcgisonline.com/ArcGIS/rest/services/World_Imagery/MapServer/tile/{z}/{y}/{x}"
            />
          </LayersControl.BaseLayer>
        </LayersControl>
        <LocationControl onLocationUpdate={updateCurrentCity} />
        {filteredPlaygrounds.map((playground) => (
          <PlaygroundMarker
            key={playground.id}
            playground={playground}
            visits={visits}
            user={user}
            visitsLoading={visitsLoading}
            onVisitChange={updateVisitsState}
            onRatingChange={fetchRatings}
            useCircle={zoomLevel < 12}
            zoomLevel={zoomLevel}
          />
        ))}
      </MapContainer>
    </Box>
  )
}

export default PlaygroundMap
