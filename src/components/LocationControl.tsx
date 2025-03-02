import L from 'leaflet'
import { useCallback, useEffect, useRef, useState } from 'react'
import { useTranslation } from 'react-i18next'
import { Marker, useMap } from 'react-leaflet'

interface LocationControlProps {
  onLocationUpdate: (lat: number, lng: number) => void
}

const LocationControl = ({ onLocationUpdate }: LocationControlProps) => {
  const map = useMap()
  const { t } = useTranslation()
  const [userLocation, setUserLocation] = useState<[number, number] | null>(null)
  const isInitialized = useRef(false)
  const [isPopupOpen, setIsPopupOpen] = useState(false)
  const [isMapInteracting, setIsMapInteracting] = useState(false)

  // Add zoom control to bottom right
  useEffect(() => {
    const zoomControl = L.control.zoom({ position: 'bottomright' })
    zoomControl.addTo(map)

    return () => {
      zoomControl.remove()
    }
  }, [map])

  // Track interactions
  useEffect(() => {
    const handlePopupOpen = () => {
      setIsPopupOpen(true)
    }

    const handlePopupClose = () => {
      setIsPopupOpen(false)
    }

    // Track map interaction events
    const handleMapInteractionStart = () => {
      setIsMapInteracting(true)
    }

    const handleMapInteractionEnd = () => {
      setTimeout(() => setIsMapInteracting(false), 1000)
    }

    // Add touch event listeners for mobile
    const handleTouchStart = () => {
      setIsMapInteracting(true)
    }

    const handleTouchEnd = () => {
      setTimeout(() => setIsMapInteracting(false), 1000)
    }

    map.on('popupopen', handlePopupOpen)
    map.on('popupclose', handlePopupClose)
    map.on('dragstart zoomstart', handleMapInteractionStart)
    map.on('dragend zoomend', handleMapInteractionEnd)
    map.on('touchstart', handleTouchStart)
    map.on('touchend', handleTouchEnd)

    return () => {
      map.off('popupopen', handlePopupOpen)
      map.off('popupclose', handlePopupClose)
      map.off('dragstart zoomstart', handleMapInteractionStart)
      map.off('dragend zoomend', handleMapInteractionEnd)
      map.off('touchstart', handleTouchStart)
      map.off('touchend', handleTouchEnd)
    }
  }, [map])

  const handleLocationFound = useCallback((e: L.LocationEvent) => {
    const { lat, lng } = e.latlng;
    const newLocation: [number, number] = [lat, lng];

    setUserLocation(newLocation);
    onLocationUpdate(lat, lng);

    // Only set view automatically if:
    // 1. The map is not initialized yet
    // 2. No popup is open or about to open
    // 3. The user is not currently interacting with the map
    if (!isInitialized.current && !isPopupOpen && !isMapInteracting) {
      map.setView(newLocation, 14);
    }
    // Do not set view after the first location is found
    isInitialized.current = true;
  }, [map, onLocationUpdate, isPopupOpen, isMapInteracting])

  const handleLocationError = useCallback((e: L.ErrorEvent) => {
    console.error('Location error:', e.message)
  }, [])

  // Store the latest handlers in refs to avoid re-registering event listeners
  const locationFoundHandlerRef = useRef(handleLocationFound);
  const locationErrorHandlerRef = useRef(handleLocationError);

  // Update refs when handlers change
  useEffect(() => {
    locationFoundHandlerRef.current = handleLocationFound;
    locationErrorHandlerRef.current = handleLocationError;
  }, [handleLocationFound, handleLocationError]);

  // Initialize the component and set up location handling only once
  useEffect(() => {
    if (!map) return;

    // Set initialization flag
    isInitialized.current = false;

    // Create stable wrapper functions that call the latest handlers
    const onLocationFound = (e: L.LocationEvent) => locationFoundHandlerRef.current(e);
    const onLocationError = (e: L.ErrorEvent) => locationErrorHandlerRef.current(e);

    // Set up event handlers
    map.on('locationfound', onLocationFound);
    map.on('locationerror', onLocationError);

    try {
      map.locate({
        setView: false,
        watch: true,
        enableHighAccuracy: true,
        timeout: 5000, // 5 seconds timeout
        maximumAge: Infinity
      });
    } catch (error) {
      console.error('Failed to initialize location tracking:', error);
      // Get at least single location update
      try {
        map.locate({
          setView: false,
          watch: false,
          enableHighAccuracy: true,
          timeout: 10000, // 10 seconds timeout
          maximumAge: Infinity
        });
      } catch (error) {
        console.error('Failed to get single location update:', error);
      }
    }

    // Clean up on unmount
    return () => {
      try {
        map.off('locationfound', onLocationFound);
        map.off('locationerror', onLocationError);
        map.stopLocate();
      } catch (error) {
        console.error('Error during location cleanup:', error);
      }
    };
  }, [map]); // Only depend on map

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

        // Set isMapInteracting to true to prevent automatic view changes from locationfound events
        setIsMapInteracting(true)

        // Jump to the latest known user location if available
        if (userLocation) {
          map.setView(userLocation, 14)
        }

        // Reset interaction state after a delay
        setTimeout(() => {
          setIsMapInteracting(false)
        }, 1000)
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

export default LocationControl
