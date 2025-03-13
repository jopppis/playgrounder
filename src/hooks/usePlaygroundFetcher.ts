import { useCallback, useRef, useState } from 'react'
import { supabase } from '../lib/supabaseClient'
import { PlaygroundWithCoordinates } from '../types/database.types'

export interface BBox {
  minLon: number
  minLat: number
  maxLon: number
  maxLat: number
}

interface PlaygroundFromView extends Omit<PlaygroundWithCoordinates, 'latitude' | 'longitude'> {
  location: {
    coordinates: [number, number] // [longitude, latitude]
  }
  avg_rating: number | null
  total_ratings: number
  user_rating: number | null
}

interface CacheEntry {
  bbox: BBox | null
  playgrounds: PlaygroundWithCoordinates[]
  timestamp: number
}

const CACHE_DURATION = 60 * 60 * 1000 // 1 hour in milliseconds

export const usePlaygroundFetcher = () => {
  const [cache, setCache] = useState<CacheEntry | null>(null)
  const pendingFetchRef = useRef<Promise<PlaygroundWithCoordinates[]> | null>(null)

  const transformPlayground = useCallback((playground: PlaygroundFromView): PlaygroundWithCoordinates => {
    return {
      ...playground,
      latitude: playground.location.coordinates[1],
      longitude: playground.location.coordinates[0]
    }
  }, [])

  const isBBoxContained = useCallback((innerBBox: BBox, outerBBox: BBox): boolean => {
    return (
      innerBBox.minLon >= outerBBox.minLon &&
      innerBBox.maxLon <= outerBBox.maxLon &&
      innerBBox.minLat >= outerBBox.minLat &&
      innerBBox.maxLat <= outerBBox.maxLat
    )
  }, [])

  const fetchAllPlaygrounds = useCallback(async (): Promise<PlaygroundWithCoordinates[]> => {
    const { data: playgroundsData, error: playgroundsError } = await supabase
      .from('v_active_playgrounds_with_ratings')
      .select('*')

    if (playgroundsError) throw playgroundsError

    return (playgroundsData || []).map(transformPlayground)
  }, [transformPlayground])

  const fetchPlaygroundsInBBox = useCallback(async (bbox: BBox): Promise<PlaygroundWithCoordinates[]> => {
    const { data: playgroundsData, error: playgroundsError } = await supabase
      .rpc('get_playgrounds_with_ratings_in_bbox', {
        min_lon: bbox.minLon,
        min_lat: bbox.minLat,
        max_lon: bbox.maxLon,
        max_lat: bbox.maxLat
      })

    if (playgroundsError) throw playgroundsError

    return (playgroundsData || []).map(transformPlayground)
  }, [transformPlayground])

  const isCacheValid = useCallback((): boolean => {
    return (
      cache !== null &&
      Date.now() - cache.timestamp < CACHE_DURATION
    )
  }, [cache])

  const getPlaygrounds = useCallback(async (
    bbox: BBox | null,
    forceRefresh = false
  ): Promise<PlaygroundWithCoordinates[]> => {
    // Return from cache if valid and usable
    if (!forceRefresh && isCacheValid()) {
      if (!bbox) {
        // Only return cached playgrounds if we have all playgrounds (cache.bbox === null)
        if (cache?.bbox === null) {
          return cache.playgrounds
        }
      } else if (cache?.bbox && isBBoxContained(bbox, cache.bbox)) {
        return cache.playgrounds
      }
    }

    // If there's a pending fetch, wait for it
    if (pendingFetchRef.current) {
      return pendingFetchRef.current
    }

    // Start new fetch
    pendingFetchRef.current = (async () => {
      try {
        let playgrounds: PlaygroundWithCoordinates[]
        let cacheBBox: BBox | null = null

        if (!bbox) {
          playgrounds = await fetchAllPlaygrounds()
          // For full fetches, we don't store a bbox in cache
          cacheBBox = null
        } else {
          playgrounds = await fetchPlaygroundsInBBox(bbox)
          cacheBBox = bbox
        }

        // Update cache
        setCache({
          bbox: cacheBBox,
          playgrounds,
          timestamp: Date.now()
        })

        return playgrounds
      } finally {
        pendingFetchRef.current = null
      }
    })()

    return pendingFetchRef.current
  }, [
    cache,
    isCacheValid,
    isBBoxContained,
    fetchAllPlaygrounds,
    fetchPlaygroundsInBBox
  ])

  const clearCache = useCallback(() => {
    setCache(null)
  }, [])

  return {
    getPlaygrounds,
    clearCache
  }
}
