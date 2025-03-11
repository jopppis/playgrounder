import { Box, Button, Spinner } from '@chakra-ui/react'
import { User } from '@supabase/supabase-js'
import L from 'leaflet'
import 'leaflet.markercluster/dist/MarkerCluster.css'
import 'leaflet.markercluster/dist/MarkerCluster.Default.css'
import 'leaflet/dist/leaflet.css'
import { memo, useCallback, useEffect, useMemo, useRef, useState } from 'react'
import { useTranslation } from 'react-i18next'
import { LayersControl, MapContainer, Marker, Popup, TileLayer, useMap } from 'react-leaflet'
import MarkerClusterGroup from 'react-leaflet-markercluster'
import { useLocation } from 'react-router-dom'
import playgroundIcon from '../assets/playground-icon-optimized.png'
import { useAllRatings } from '../hooks/useAllRatings'
import { useAuth } from '../hooks/useAuth'
import { useCurrentCity } from '../hooks/useCurrentCity'
import { BBox, usePlaygrounds } from '../hooks/usePlaygrounds'
import { useUserFilters } from '../hooks/useUserFilters'
import { useVisits } from '../hooks/useVisits'
import { PlaygroundWithCoordinates, Visit } from '../types/database.types'
import LocationControl from './LocationControl'
import MenuDrawer from './MenuDrawer'
import NoVisiblePlaygrounds from './NoVisiblePlaygrounds'
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
  .marker-cluster div {
    background-color: rgba(254, 198, 1, 0.8);
    color: #333;
    font-weight: bold;
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
const PlaygroundMarker = memo(({ playground, visits, user, visitsLoading, onVisitChange, onRatingChange, editMode }: {
  playground: PlaygroundWithCoordinates
  visits: Visit[]
  user: User | null
  visitsLoading: boolean
  onVisitChange: (playgroundId: string, isVisited: boolean) => void
  onRatingChange: (playgroundId: string) => void
  editMode: boolean
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
  const markerRef = useRef<L.Marker>(null)

  const updatePopup = useCallback(() => {
    if (popupRef.current) {
      popupRef.current.update()
    }
  }, [])

  // Update popup when visit status changes
  useEffect(() => {
    updatePopup()
  }, [hasVisited, updatePopup])

  // Handle local visit status change
  const handleVisitChange = useCallback((isVisited: boolean) => {
    onVisitChange(playground.id, isVisited)
    // Force icon update immediately
    if (markerRef.current) {
      markerRef.current.setIcon(isVisited ? visitedPlaygroundIcon : basePlaygroundIcon)
    }
  }, [playground.id, onVisitChange])

  return (
    <Marker
      position={[playground.latitude, playground.longitude]}
      icon={icon}
      ref={markerRef}
    >
      <Popup
        ref={popupRef}
        autoPan={true}
        autoPanPadding={[50, 50]}
      >
        <PlaygroundPopup
          playground={playground}
          onVisitChange={handleVisitChange}
          onContentChange={updatePopup}
          onRatingChange={() => onRatingChange(playground.id)}
          editMode={editMode}
        />
      </Popup>
    </Marker>
  )
}, (prevProps, nextProps) => {
  // Custom comparison to prevent unnecessary rerenders
  // Only rerender if the core properties we depend on have changed
  // Icon is changed independently to prevent closing of the popup
  return (
    prevProps.playground.id === nextProps.playground.id &&
    prevProps.visitsLoading === nextProps.visitsLoading &&
    prevProps.user?.id === nextProps.user?.id &&
    prevProps.editMode === nextProps.editMode
  );
});

// Separate component to handle map events
const MapEvents = ({ onMapReady }: { onMapReady: (map: L.Map) => void }) => {
  const map = useMap()

  useEffect(() => {
    onMapReady(map)
  }, [map, onMapReady])

  return null
}

const PlaygroundMap = () => {
  const { t } = useTranslation()
  const { user } = useAuth()
  const { playgrounds, loading: playgroundsLoading, refreshPlaygrounds } = usePlaygrounds()
  const { visits, loading: visitsLoading, updateVisitsState } = useVisits()
  const { filters, loading: filtersLoading, updateFilters } = useUserFilters()
  const { currentCity, updateCurrentCity } = useCurrentCity()
  const { ratings, refreshRatings } = useAllRatings()
  const [showSignIn, setShowSignIn] = useState(false)
  const [isMenuOpen, setIsMenuOpen] = useState(false)
  const [editMode, setEditMode] = useState(false)
  const mapRef = useRef<L.Map | null>(null)
  const location = useLocation()

  // Add state for stats loading
  const [isLoadingStats, setIsLoadingStats] = useState(false)
  const [showStats, setShowStats] = useState(false)

  useEffect(() => {
    // Check for email confirmation redirect
    const searchParams = new URLSearchParams(location.search)
    if (searchParams.has('email_confirm') || location.pathname === '/signin') {
      setShowSignIn(true)
    }
  }, [location])

  // Add handler for menu open to fetch all playgrounds
  const handleMenuOpen = useCallback(async (open: boolean) => {
    setIsMenuOpen(open)
    if (!open) {
      setShowStats(false)
      setIsLoadingStats(false)
    }
  }, [])

  // Add handler for stats menu
  const handleStatsOpen = useCallback(async (show: boolean) => {
    if (show) {
      setIsLoadingStats(true)
      try {
        // Force refresh when fetching all playgrounds for stats
        await refreshPlaygrounds(null, 0)
      } catch (error) {
        console.error('Error fetching playgrounds:', error)
      } finally {
        setIsLoadingStats(false)
      }
    }
    setShowStats(show)
  }, [refreshPlaygrounds])

  // Add handler for map move/zoom events
  const handleMapMoveEnd = useCallback(() => {
    if (!mapRef.current) return

    const bounds = mapRef.current.getBounds()
    const zoom = mapRef.current.getZoom()

    const currentBBox: BBox = {
      minLon: bounds.getWest(),
      minLat: bounds.getSouth(),
      maxLon: bounds.getEast(),
      maxLat: bounds.getNorth()
    }

    refreshPlaygrounds(currentBBox, zoom)
  }, [refreshPlaygrounds])

  const handleMapReady = useCallback((map: L.Map) => {
    mapRef.current = map
    map.on('moveend', handleMapMoveEnd)
    map.on('zoomend', handleMapMoveEnd)

    // Trigger initial fetch
    handleMapMoveEnd()
  }, [handleMapMoveEnd])

  // Cleanup map events
  useEffect(() => {
    return () => {
      if (mapRef.current) {
        mapRef.current.off('moveend', handleMapMoveEnd)
        mapRef.current.off('zoomend', handleMapMoveEnd)
      }
    }
  }, [handleMapMoveEnd])

  // Helsinki center coordinates (Senate Square area)
  const helsinkiCenter: [number, number] = [60.170887, 24.952347]

  const filteredPlaygrounds = useMemo(() => {
    if (!playgrounds) return []

    return playgrounds.filter(playground => {
      // Filter by search query
      if (filters.searchQuery !== null && filters.searchQuery.trim() !== '') {
        const searchTerms = filters.searchQuery.toLowerCase().trim().split(/\s+/)
        const searchableText = [
          playground.name,
          playground.city
        ]
          .filter(Boolean)
          .join(' ')
          .toLowerCase()

        // Check if all search terms are present in the searchable text
        if (!searchTerms.every(term => searchableText.includes(term))) {
          return false
        }
      }

      // Filter by city
      if (filters.city !== null) {
        if (filters.city === 'no_city') {
          if (playground.city !== null && playground.city !== undefined) {
            return false;
          }
        } else if (playground.city?.toLowerCase() !== filters.city) {
          return false;
        }
      }

      // Filter by data source
      if (filters.dataSource !== null && playground.data_source !== filters.dataSource) {
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

  // Watch for search and city filter changes and zoom to markers
  useEffect(() => {
    if (mapRef.current && filteredPlaygrounds.length > 0 &&
        (filters.searchQuery !== null || filters.city !== null)) {
      const bounds = L.latLngBounds(
        filteredPlaygrounds.map(playground => [playground.latitude, playground.longitude])
      )
      mapRef.current.fitBounds(bounds, {
        padding: [50, 50],
        maxZoom: 16,
        animate: true,
        duration: 1
      })
    }
  }, [filteredPlaygrounds, filters.searchQuery, filters.city])

  // Add navigation and zoom event listeners
  useEffect(() => {
    const handleNavigateToPlayground = (event: CustomEvent) => {
      const { lat, lng, zoom } = event.detail
      if (mapRef.current) {
        mapRef.current.setView([lat, lng], zoom, {
          animate: true,
          duration: 1
        })
      }
    }

    window.addEventListener('navigateToPlayground', handleNavigateToPlayground as EventListener)

    return () => {
      window.removeEventListener('navigateToPlayground', handleNavigateToPlayground as EventListener)
    }
  }, [])

  // Define marker cluster group options
  const markerClusterOptions = {
    showCoverageOnHover: true,
    maxClusterRadius: 100,
    spiderfyOnMaxZoom: false,
    disableClusteringAtZoom: 13,
    removeOutsideVisibleBounds: true
  }

  // Only show loading spinner for essential data, not for ratings
  const isLoading = playgroundsLoading || visitsLoading || filtersLoading

  // Add handler for when no playgrounds are visible
  const handleNoVisiblePlaygrounds = useCallback(async () => {
    try {
      await refreshPlaygrounds(null, 0)
    } catch (error) {
      console.error('Error fetching all playgrounds:', error)
    }
  }, [refreshPlaygrounds])

  // Add handler for clearing filters
  const handleClearFilters = useCallback(() => {
    updateFilters({
      searchQuery: null,
      city: null,
      dataSource: null,
      hasSupervised: null,
      visitStatus: null,
      minStars: null,
      noRating: null,
      minUserStars: null,
      noUserRating: null
    })
  }, [updateFilters])

  return (
    <Box position="relative" height="100%" width="100%" pb="env(safe-area-inset-bottom)">
      {(isLoading || isLoadingStats) && (
        <Box
          position="absolute"
          top={0}
          left={0}
          right={0}
          bottom={0}
          bg="blackAlpha.200"
          zIndex={1000}
          display="flex"
          alignItems="center"
          justifyContent="center"
          pointerEvents="none"
        >
          <Spinner size="xl" color="brand.500" />
        </Box>
      )}
      <PlaygroundFilter
        filters={filters}
        onChange={updateFilters}
        onLoadAllPlaygrounds={async () => {
          await refreshPlaygrounds(null, 0)
        }}
      />
      {mapRef.current && (
        <NoVisiblePlaygrounds
          map={mapRef.current}
          playgrounds={playgrounds || []}
          filteredPlaygrounds={filteredPlaygrounds}
          onNoVisiblePlaygrounds={handleNoVisiblePlaygrounds}
          onClearFilters={handleClearFilters}
          isLoading={isLoading || isLoadingStats}
        />
      )}
      <Box position="fixed" top={4} right={4} zIndex={2200}>
        <Button
          size="md"
          variant="solid"
          onClick={() => handleMenuOpen(!isMenuOpen)}
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
        onClose={() => handleMenuOpen(false)}
        showSignIn={showSignIn}
        setShowSignIn={setShowSignIn}
        filters={filters}
        filteredPlaygroundCount={filteredPlaygrounds.length}
        currentCity={currentCity}
        visits={visits}
        editMode={editMode}
        setEditMode={setEditMode}
        loading={isLoadingStats}
        showStats={showStats}
        onStatsChange={handleStatsOpen}
        playgrounds={playgrounds}
      />

      <MapContainer
        center={helsinkiCenter}
        zoom={13.5}
        style={{ height: '100%', width: '100%' }}
        zoomControl={false}
        preferCanvas={true}
      >
        <MapEvents onMapReady={handleMapReady} />
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

        <MarkerClusterGroup {...markerClusterOptions}>
          {filteredPlaygrounds.map((playground) => (
            <PlaygroundMarker
              key={playground.id}
              playground={playground}
              visits={visits}
              user={user}
              visitsLoading={visitsLoading}
              onVisitChange={updateVisitsState}
              onRatingChange={(playgroundId) => refreshRatings(playgroundId)}
              editMode={editMode}
            />
          ))}
        </MarkerClusterGroup>
      </MapContainer>
    </Box>
  )
}

export default PlaygroundMap
