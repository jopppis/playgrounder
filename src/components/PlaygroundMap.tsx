import { Box, Button, IconButton, Spinner, Text } from '@chakra-ui/react';
import { User } from '@supabase/supabase-js';
import L from 'leaflet';
import 'leaflet.markercluster/dist/MarkerCluster.css';
import 'leaflet.markercluster/dist/MarkerCluster.Default.css';
import 'leaflet/dist/leaflet.css';
import { memo, useCallback, useEffect, useMemo, useRef, useState } from 'react';
import { useTranslation } from 'react-i18next';
import { MdAddLocation } from 'react-icons/md';
import { LayersControl, MapContainer, Marker, Popup, TileLayer, useMap } from 'react-leaflet';
import MarkerClusterGroup from 'react-leaflet-markercluster';
import { useLocation } from 'react-router-dom';
import playgroundIcon from '../assets/playground-icon-optimized.png';
import { useAuth } from '../hooks/useAuth';
import { useCurrentCity } from '../hooks/useCurrentCity';
import { BBox, usePlaygrounds } from '../hooks/usePlaygrounds';
import { useUserFilters } from '../hooks/useUserFilters';
import { useVisits } from '../hooks/useVisits';
import { PlaygroundWithCoordinates, Visit } from '../types/database.types';
import LocationControl from './LocationControl';
import MenuDrawer from './MenuDrawer';
import NoVisiblePlaygrounds from './NoVisiblePlaygrounds';
import { PlaygroundFilter } from './PlaygroundFilter';
import { startAddingPlayground } from './PlaygroundMapUtils';
import { PlaygroundPopup } from './PlaygroundPopup';

// Add styles to head
const style = document.createElement('style');
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

  .playground-marker.new {
    position: relative;
  }

  .playground-marker .new-badge {
    position: absolute;
    top: -4px;
    right: -4px;
    width: 20px;
    height: 20px;
    background-color: #38A169;
    color: white;
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 16px;
    font-weight: bold;
    border: 2px solid white;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
  }
`;
document.head.appendChild(style);

// Create the base playground icon
const createBaseIcon = (isVisited = false, isNew = false) => {
  return L.divIcon({
    html: `
      <div class="playground-marker ${isVisited ? 'visited' : 'unvisited'} ${isNew ? 'new' : ''}">
        <img src="${playgroundIcon}" alt="playground" />
        ${isVisited ? '<div class="badge">✓</div>' : ''}
        ${isNew ? '<div class="new-badge">+</div>' : ''}
      </div>
    `,
    className: '',
    iconSize: [40, 40],
    iconAnchor: [20, 40],
    popupAnchor: [0, -40],
  });
};

// Create the icon instances
const basePlaygroundIcon = createBaseIcon(false);
const visitedPlaygroundIcon = createBaseIcon(true);

// Add URL state management
const useMapUrlState = () => {
  const location = useLocation();

  const updateUrlState = useCallback((map: L.Map, playgroundId?: string) => {
    const center = map.getCenter();
    const zoom = map.getZoom();
    const params = new URLSearchParams(window.location.search);

    params.set('lat', center.lat.toFixed(6));
    params.set('lng', center.lng.toFixed(6));
    params.set('zoom', zoom.toString());

    if (playgroundId) {
      params.set('playground', playgroundId);
    } else {
      params.delete('playground');
    }

    // Use history.replaceState directly to avoid React re-renders
    const newUrl = `${window.location.pathname}?${params.toString()}`;
    window.history.replaceState(null, '', newUrl);
  }, []);

  const getInitialMapState = useCallback(() => {
    const searchParams = new URLSearchParams(location.search);
    const lat = searchParams.get('lat');
    const lng = searchParams.get('lng');
    const zoom = searchParams.get('zoom');
    const playgroundId = searchParams.get('playground');

    return {
      center: lat && lng ? ([parseFloat(lat), parseFloat(lng)] as [number, number]) : undefined,
      zoom: zoom ? parseInt(zoom) : undefined,
      playgroundId,
    };
  }, [location.search]);

  return { updateUrlState, getInitialMapState };
};

const TouchEventHandler = () => {
  const map = useMap();

  useEffect(() => {
    if (!map) return;

    let lastTap = 0;
    let mapDragged = false;
    let activeTouches = 0;
    let multiTouchTimeout: number | null = null;

    const handleDragStart = () => {
      mapDragged = true;
    };
    const handleDragEnd = () => {
      // Reset drag flag after drag ends
      setTimeout(() => {
        mapDragged = false;
      }, 0);
    };

    const handleTouchStart = (e: TouchEvent) => {
      activeTouches = e.touches.length;

      // Clear any pending multi-touch timeout
      if (multiTouchTimeout) {
        clearTimeout(multiTouchTimeout);
        multiTouchTimeout = null;
      }

      // If more than one touch, set a timeout to prevent double tap
      if (activeTouches > 1) {
        multiTouchTimeout = window.setTimeout(() => {
          multiTouchTimeout = null;
        }, 600); // Slightly longer than double tap window
      }
    };

    const handleTap = (e: TouchEvent) => {
      // Don't process double tap if we recently had multiple touches
      if (multiTouchTimeout || e.touches.length > 1 || e.changedTouches.length !== 1) {
        return;
      }

      const target = e.target as HTMLElement;
      if (
        target.closest('.leaflet-control') ||
        target.closest('.leaflet-popup') ||
        target.closest('.playground-marker') ||
        target.closest('button') ||
        target.closest('.leaflet-control-container')
      ) {
        return;
      }

      const currentTime = new Date().getTime();
      const tapLength = currentTime - lastTap;
      if (tapLength < 500 && tapLength > 0 && !mapDragged) {
        const touch = e.changedTouches[0];
        const container = map.getContainer();
        const rect = container.getBoundingClientRect();
        const point = L.point(touch.clientX - rect.left, touch.clientY - rect.top);
        map.setZoomAround(point, map.getZoom() + 1);
      }
      lastTap = currentTime;
      mapDragged = false; // Reset drag flag after tap
    };

    map.getContainer().addEventListener('touchstart', handleTouchStart);
    map.getContainer().addEventListener('touchend', handleTap);
    map.on('dragstart', handleDragStart);
    map.on('dragend', handleDragEnd);

    return () => {
      if (multiTouchTimeout) {
        clearTimeout(multiTouchTimeout);
      }
      map.getContainer().removeEventListener('touchstart', handleTouchStart);
      map.getContainer().removeEventListener('touchend', handleTap);
      map.off('dragstart', handleDragStart);
      map.off('dragend', handleDragEnd);
    };
  }, [map]);

  return null;
};

// Add MapStateManager component
const MapStateManager = ({
  onMapReady,
  playgrounds,
}: {
  onMapReady: (map: L.Map) => void;
  playgrounds: PlaygroundWithCoordinates[];
}) => {
  const map = useMap();
  const { updateUrlState, getInitialMapState } = useMapUrlState();
  const initialState = getInitialMapState();
  const isInitialLoad = useRef(true);
  const updateTimeout = useRef<number | null>(null);
  const URL_DEBOUNCE_DELAY = 300;
  const initialPlaygroundId = useRef<string | null>(initialState.playgroundId || null);

  // Separate effect for onMapReady
  useEffect(() => {
    onMapReady(map);
  }, [map, onMapReady]);

  useEffect(() => {
    // Handle initial state only once
    if (isInitialLoad.current) {
      if (initialState.center && initialState.zoom) {
        map.setView(initialState.center, initialState.zoom);
      }
      isInitialLoad.current = false;
    }

    // Try to open the initial playground popup if we have a playground ID and playgrounds are loaded
    if (initialPlaygroundId.current && playgrounds.length > 0) {
      const playground = playgrounds.find((p) => p.id === initialPlaygroundId.current);
      if (playground) {
        // Set view to the playground location
        map.setView([playground.latitude, playground.longitude], 14);

        // Use setTimeout to wait for markers to be created
        setTimeout(() => {
          map.eachLayer((layer) => {
            if (layer instanceof L.Marker) {
              const markerLatLng = layer.getLatLng();
              if (
                markerLatLng.lat === playground.latitude &&
                markerLatLng.lng === playground.longitude
              ) {
                layer.openPopup();
              }
            }
          });
        }, 200); // Small delay to ensure markers are rendered

        // Clear the ID so we don't try to open it again
        initialPlaygroundId.current = null;
      }
    }

    // Debounced URL update handler
    const handleMapMove = () => {
      if (updateTimeout.current) {
        window.clearTimeout(updateTimeout.current);
      }

      updateTimeout.current = window.setTimeout(() => {
        // Check for open popups
        let openPopupPlaygroundId: string | undefined;
        map.eachLayer((layer) => {
          if (layer instanceof L.Marker && layer.getPopup()?.isOpen()) {
            // Find the playground that matches this marker's position
            const markerLatLng = layer.getLatLng();
            const playground = playgrounds.find(
              (p) => p.latitude === markerLatLng.lat && p.longitude === markerLatLng.lng,
            );
            if (playground) {
              openPopupPlaygroundId = playground.id;
            }
          }
        });

        // Update URL state with the playground ID if a popup is open
        updateUrlState(map, openPopupPlaygroundId);
      }, URL_DEBOUNCE_DELAY);
    };

    map.on('moveend', handleMapMove);
    map.on('zoomend', handleMapMove);

    return () => {
      if (updateTimeout.current) {
        window.clearTimeout(updateTimeout.current);
      }
      map.off('moveend', handleMapMove);
      map.off('zoomend', handleMapMove);
    };
  }, [map, onMapReady, initialState, playgrounds, updateUrlState]);

  return null;
};

// Separate component for playground markers
const PlaygroundMarker = memo(
  ({
    playground,
    visits,
    user,
    visitsLoading,
    onVisitChange,
    onRatingChange,
    editMode,
  }: {
    playground: PlaygroundWithCoordinates;
    visits: Visit[];
    user: User | null;
    visitsLoading: boolean;
    onVisitChange: (playgroundId: string, isVisited: boolean) => void;
    onRatingChange: (playgroundId: string) => void;
    editMode: boolean;
  }) => {
    const { updateUrlState } = useMapUrlState();
    const map = useMap();
    const hasVisited = useMemo(
      () => visits.some((visit) => visit.playground_id === playground.id),
      [visits, playground.id],
    );

    const icon = useMemo(() => {
      if (!user || visitsLoading) {
        return basePlaygroundIcon;
      }
      return hasVisited ? visitedPlaygroundIcon : basePlaygroundIcon;
    }, [user, visitsLoading, hasVisited]);

    const popupRef = useRef<L.Popup>(null);
    const markerRef = useRef<L.Marker>(null);

    const updatePopup = useCallback(() => {
      if (popupRef.current) {
        popupRef.current.update();
      }
    }, []);

    // Update popup when visit status changes
    useEffect(() => {
      updatePopup();
    }, [hasVisited, updatePopup]);

    // Handle local visit status change
    const handleVisitChange = useCallback(
      (isVisited: boolean) => {
        onVisitChange(playground.id, isVisited);
        // Force icon update immediately
        if (markerRef.current) {
          markerRef.current.setIcon(isVisited ? visitedPlaygroundIcon : basePlaygroundIcon);
        }
      },
      [playground.id, onVisitChange],
    );

    // Handle popup open/close
    const handlePopupOpen = useCallback(() => {
      updateUrlState(map, playground.id);
    }, [map, playground.id, updateUrlState]);

    const handlePopupClose = useCallback(() => {
      updateUrlState(map);
    }, [map, updateUrlState]);

    return (
      <Marker position={[playground.latitude, playground.longitude]} icon={icon} ref={markerRef}>
        <Popup
          ref={popupRef}
          autoPan={true}
          autoPanPadding={[50, 50]}
          eventHandlers={{
            add: handlePopupOpen,
            remove: handlePopupClose,
          }}
        >
          <Box>
            <PlaygroundPopup
              playground={playground}
              onVisitChange={handleVisitChange}
              onContentChange={updatePopup}
              onRatingChange={() => onRatingChange(playground.id)}
              editMode={editMode}
            />
          </Box>
        </Popup>
      </Marker>
    );
  },
  (prevProps, nextProps) => {
    // Custom comparison to prevent unnecessary rerenders
    // Only rerender if the core properties we depend on have changed
    // Icon is changed independently to prevent closing of the popup
    return (
      prevProps.playground.id === nextProps.playground.id &&
      prevProps.visitsLoading === nextProps.visitsLoading &&
      prevProps.user?.id === nextProps.user?.id &&
      prevProps.editMode === nextProps.editMode
    );
  },
);

interface PlaygroundMapProps {
  editMode?: boolean;
  onAddPlayground?: (location: { lat: number; lng: number }) => void;
  onEditModeChange?: (editMode: boolean) => void;
  selectingLocation?: boolean;
  addedLocations?: Array<{
    lat: number;
    lng: number;
    name: string;
    hasSupervised: boolean;
  }>;
}

const PlaygroundMap = ({
  editMode = false,
  onAddPlayground,
  onEditModeChange,
  selectingLocation: externalSelectingLocation = false,
  addedLocations = [],
}: PlaygroundMapProps) => {
  const { t } = useTranslation();
  const { user } = useAuth();
  const {
    playgrounds,
    loading: playgroundsLoading,
    refreshPlaygrounds,
    refreshSinglePlayground,
  } = usePlaygrounds();
  const { visits, loading: visitsLoading, updateVisitsState } = useVisits();
  const { filters, loading: filtersLoading, updateFilters } = useUserFilters();
  const { currentCity, updateCurrentCity } = useCurrentCity();
  const [showSignIn, setShowSignIn] = useState(false);
  const [isMenuOpen, setIsMenuOpen] = useState(false);
  const [selectingLocation, setSelectingLocation] = useState(false);
  const [tempMarker, setTempMarker] = useState<L.Marker | null>(null);
  const mapRef = useRef<L.Map | null>(null);
  const location = useLocation();

  // Add state for stats loading
  const [isLoadingStats, setIsLoadingStats] = useState(false);
  const [showStats, setShowStats] = useState(false);

  // Update internal selecting location state when external state changes
  useEffect(() => {
    setSelectingLocation(externalSelectingLocation);
  }, [externalSelectingLocation]);

  // Manage temporary markers for added locations
  useEffect(() => {
    if (!mapRef.current) {
      return;
    }

    // Clear any existing temp markers
    if (tempMarker) {
      tempMarker.remove();
      setTempMarker(null);
    }

    // Create markers for all added locations
    const markers = addedLocations.map((location) => {
      const newIcon = createBaseIcon(false, true);
      const marker = L.marker([location.lat, location.lng], { icon: newIcon });

      // Add popup with proposal information
      const popupContent = `
        <div style="min-width: 200px;">
          <div style="color: #38A169; font-weight: bold; margin-bottom: 8px;">
            ${t('admin.proposals.status.pending')}
          </div>
          <div style="font-weight: bold; margin-bottom: 4px;">
            ${location.name}
          </div>
          <div style="color: #4A5568; font-size: 0.9em;">
            ${
              location.hasSupervised
                ? t('playground.supervision.supervised')
                : t('playground.supervision.unsupervised')
            }
          </div>
        </div>
      `;
      marker.bindPopup(popupContent);

      marker.addTo(mapRef.current!);
      return marker;
    });

    return () => {
      markers.forEach((marker) => marker.remove());
    };
  }, [addedLocations, t, tempMarker]);

  useEffect(() => {
    // Check for email confirmation redirect
    const searchParams = new URLSearchParams(location.search);
    if (searchParams.has('email_confirm') || location.pathname === '/signin') {
      setShowSignIn(true);
    }
  }, [location]);

  // Add handler for menu open to fetch all playgrounds
  const handleMenuOpen = useCallback(async (open: boolean) => {
    setIsMenuOpen(open);
    if (!open) {
      setShowStats(false);
      setIsLoadingStats(false);
    }
  }, []);

  // Add handler for stats menu
  const handleStatsOpen = useCallback(
    async (show: boolean) => {
      if (show) {
        setIsLoadingStats(true);
        try {
          // Force refresh when fetching all playgrounds for stats
          await refreshPlaygrounds(null, 0);
        } catch (error) {
          console.error('Error fetching playgrounds:', error);
        } finally {
          setIsLoadingStats(false);
        }
      }
      setShowStats(show);
    },
    [refreshPlaygrounds],
  );

  // Add handler for map move/zoom events
  const handleMapMoveEnd = useCallback(() => {
    if (!mapRef.current) return;

    const bounds = mapRef.current.getBounds();
    const zoom = mapRef.current.getZoom();

    const currentBBox: BBox = {
      minLon: bounds.getWest(),
      minLat: bounds.getSouth(),
      maxLon: bounds.getEast(),
      maxLat: bounds.getNorth(),
    };

    refreshPlaygrounds(currentBBox, zoom);
  }, [refreshPlaygrounds]);

  // Add effect to refresh playgrounds when filters change
  useEffect(() => {
    if (mapRef.current) {
      handleMapMoveEnd();
    }
  }, [filters, handleMapMoveEnd]);

  const handleMapReady = useCallback(
    (map: L.Map) => {
      mapRef.current = map;
      map.on('moveend', handleMapMoveEnd);
      map.on('zoomend', handleMapMoveEnd);

      // Trigger initial fetch
      handleMapMoveEnd();
    },
    [handleMapMoveEnd],
  );

  // Cleanup map events
  useEffect(() => {
    return () => {
      if (mapRef.current) {
        mapRef.current.off('moveend', handleMapMoveEnd);
        mapRef.current.off('zoomend', handleMapMoveEnd);
      }
    };
  }, [handleMapMoveEnd]);

  // Helsinki center coordinates (Senate Square area)
  const helsinkiCenter: [number, number] = [60.170887, 24.952347];

  // Get initial map state from URL parameters
  const { getInitialMapState } = useMapUrlState();
  const initialMapState = getInitialMapState();
  const initialCenter = initialMapState.center || helsinkiCenter;
  const initialZoom = initialMapState.zoom || 14;

  const filteredPlaygrounds = useMemo(() => {
    if (!playgrounds) return [];

    return playgrounds.filter((playground) => {
      // Filter by search query
      if (filters.searchQuery !== null && filters.searchQuery.trim() !== '') {
        const searchTerms = filters.searchQuery.toLowerCase().trim().split(/\s+/);
        const searchableText = [playground.name, playground.city]
          .filter(Boolean)
          .join(' ')
          .toLowerCase();

        // Check if all search terms are present in the searchable text
        if (!searchTerms.every((term) => searchableText.includes(term))) {
          return false;
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
        return false;
      }

      // Filter by supervised activities
      if (
        filters.hasSupervised !== null &&
        playground.has_supervised_activities !== filters.hasSupervised
      ) {
        return false;
      }

      // Filter by unnamed playgrounds
      if (filters.hideUnnamed === true && !playground.name) {
        return false;
      }

      // Filter by visit status
      if (user && filters.visitStatus !== null) {
        const hasVisited = visits.some((visit) => visit.playground_id === playground.id);
        if (filters.visitStatus === 'visited' && !hasVisited) return false;
        if (filters.visitStatus === 'unvisited' && hasVisited) return false;
      }

      // Filter by public star rating
      if (filters.minStars !== null) {
        // Hide unrated playgrounds or those with rating below the minimum
        if (!playground.avg_rating || playground.avg_rating < filters.minStars) {
          return false;
        }
      }

      // Filter for playgrounds with no rating
      if (filters.noRating === true) {
        // Only show playgrounds with no rating
        if (playground.avg_rating) {
          return false;
        }
      }

      // Filter by user's own rating
      if (user && filters.minUserStars !== null) {
        // Hide unrated playgrounds or those with user rating below the minimum
        if (!playground.user_rating || playground.user_rating < filters.minUserStars) {
          return false;
        }
      }

      // Filter for playgrounds with no user rating
      if (user && filters.noUserRating === true) {
        // Only show playgrounds with no user rating
        if (playground.user_rating) {
          return false;
        }
      }

      return true;
    });
  }, [playgrounds, filters, user, visits]);

  // Add navigation and zoom event listeners
  useEffect(() => {
    const handleNavigateToPlayground = (event: CustomEvent) => {
      const { lat, lng, zoom } = event.detail;
      if (mapRef.current) {
        mapRef.current.setView([lat, lng], zoom, {
          animate: true,
          duration: 1,
        });
      }
    };

    window.addEventListener('navigateToPlayground', handleNavigateToPlayground as EventListener);

    return () => {
      window.removeEventListener(
        'navigateToPlayground',
        handleNavigateToPlayground as EventListener,
      );
    };
  }, []);

  // Define marker cluster group options
  const markerClusterOptions = {
    showCoverageOnHover: true,
    maxClusterRadius: 100,
    spiderfyOnMaxZoom: false,
    disableClusteringAtZoom: 13,
    removeOutsideVisibleBounds: true,
  };

  // Only show loading spinner for essential data, not for ratings
  const isLoading = playgroundsLoading || visitsLoading || filtersLoading;

  // Add handler for when no playgrounds are visible
  const handleNoVisiblePlaygrounds = useCallback(async () => {
    try {
      await refreshPlaygrounds(null, 0);
    } catch (error) {
      console.error('Error fetching all playgrounds:', error);
    }
  }, [refreshPlaygrounds]);

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
      noUserRating: null,
      hideUnnamed: null,
    });
  }, [updateFilters]);

  // Add event listener for starting playground addition
  useEffect(() => {
    const handleStartAddingPlayground = () => {
      if (!editMode) return;
      setSelectingLocation(true);
      if (mapRef.current) {
        mapRef.current.getContainer().style.cursor = 'crosshair';
      }
    };

    window.addEventListener('startAddingPlayground', handleStartAddingPlayground);

    return () => {
      window.removeEventListener('startAddingPlayground', handleStartAddingPlayground);
    };
  }, [editMode]);

  // Add event listener for new playground location selection
  useEffect(() => {
    if (!mapRef.current || !selectingLocation) {
      // Clean up marker when selection is canceled
      if (tempMarker) {
        tempMarker.remove();
        setTempMarker(null);
      }
      return;
    }

    const handleMapClick = (e: L.LeafletMouseEvent) => {
      if (!selectingLocation) return;

      // Remove existing marker if any
      if (tempMarker) {
        tempMarker.remove();
      }

      // Create new marker with the new badge
      const newIcon = createBaseIcon(false, true);
      const marker = L.marker(e.latlng, { icon: newIcon });
      marker.addTo(mapRef.current!);
      setTempMarker(marker);

      if (onAddPlayground) {
        onAddPlayground(e.latlng);
        setSelectingLocation(false);
        if (mapRef.current) {
          mapRef.current.getContainer().style.cursor = '';
        }
      }
    };

    mapRef.current.on('click', handleMapClick);

    return () => {
      if (mapRef.current) {
        mapRef.current.off('click', handleMapClick);
        mapRef.current.getContainer().style.cursor = '';
      }
    };
  }, [selectingLocation, onAddPlayground, tempMarker]);

  // Update cursor and click handling when edit mode changes
  useEffect(() => {
    if (!editMode) {
      setSelectingLocation(false);
      if (mapRef.current) {
        mapRef.current.getContainer().style.cursor = '';
      }
      if (tempMarker && !selectingLocation) {
        tempMarker.remove();
        setTempMarker(null);
      }
    }
  }, [editMode, selectingLocation, tempMarker]);

  return (
    <Box position="relative" h="100%" w="100%">
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
          await refreshPlaygrounds(null, 0);
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
            borderColor: 'secondary.500',
          }}
          _active={{
            bg: 'brand.500',
            transform: 'translateY(0)',
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
        loading={isLoadingStats}
        showStats={showStats}
        onStatsChange={handleStatsOpen}
        onEditModeChange={onEditModeChange}
        playgrounds={playgrounds}
      />

      <MapContainer
        center={initialCenter}
        zoom={initialZoom}
        style={{ height: '100%', width: '100%' }}
        zoomControl={false}
        preferCanvas={true}
        tapTolerance={15}
        touchZoom={true}
      >
        <TouchEventHandler />
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
        <MapStateManager onMapReady={handleMapReady} playgrounds={playgrounds || []} />

        <MarkerClusterGroup {...markerClusterOptions}>
          {filteredPlaygrounds.map((playground) => (
            <PlaygroundMarker
              key={playground.id}
              playground={playground}
              visits={visits}
              user={user}
              visitsLoading={visitsLoading}
              onVisitChange={updateVisitsState}
              onRatingChange={() => refreshSinglePlayground(playground.id)}
              editMode={editMode}
            />
          ))}
        </MarkerClusterGroup>
      </MapContainer>

      {editMode && selectingLocation && (
        <Box
          position="absolute"
          top={4}
          left="50%"
          transform="translateX(-50%)"
          zIndex={1000}
          bg="white"
          p={3}
          borderRadius="md"
          boxShadow="md"
          textAlign="center"
          border="1px solid"
          borderColor="brand.100"
        >
          <Text fontWeight="medium" color="brand.700">
            {t('playground.add.selectLocation')}
          </Text>
          <Button
            mt={2}
            size="sm"
            onClick={() => {
              setSelectingLocation(false);
              if (mapRef.current) {
                mapRef.current.getContainer().style.cursor = '';
              }
              if (tempMarker) {
                tempMarker.remove();
              }
            }}
            bg="red.500"
            color="white"
            border="1px solid"
            borderColor="red.500"
            _hover={{
              bg: 'red.600',
              transform: 'translateY(-2px)',
              borderColor: 'red.600',
            }}
            _active={{
              bg: 'red.500',
              transform: 'translateY(0)',
            }}
            transition="all 0.2s"
          >
            {t('playground.add.cancelButton')}
          </Button>
        </Box>
      )}

      {editMode && (
        <Box position="absolute" left={4} bottom={4} zIndex={1000}>
          <IconButton
            aria-label={t('playground.add.button')}
            variant="solid"
            rounded="full"
            size="lg"
            bg="brand.500"
            color="white"
            _hover={{
              bg: 'secondary.500',
              transform: 'translateY(-2px)',
            }}
            _active={{
              bg: 'brand.500',
              transform: 'translateY(0)',
            }}
            transition="all 0.2s"
            onClick={startAddingPlayground}
          >
            <Box as={MdAddLocation} fontSize="24px" />
          </IconButton>
        </Box>
      )}
    </Box>
  );
};

export default PlaygroundMap;
