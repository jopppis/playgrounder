import { useCallback, useEffect, useState } from 'react'
import { supabase } from '../lib/supabaseClient'
import { Playground, PlaygroundWithCoordinates } from '../types/database.types'

// Represents the raw playground data from the materialized view before coordinate transformation
interface PlaygroundFromView extends Omit<Playground, 'location'> {
  location: {
    coordinates: [number, number] // [longitude, latitude]
  }
}

// Module-level cache
let playgroundsCache: PlaygroundWithCoordinates[] | null = null
let lastFetchTime: number | null = null
const CACHE_DURATION = 60 * 60 * 1000 // 1 hour in milliseconds

// Request deduplication - store the pending promise
let pendingFetchPromise: Promise<PlaygroundWithCoordinates[]> | null = null

export const usePlaygrounds = () => {
  const [playgrounds, setPlaygrounds] = useState<PlaygroundWithCoordinates[]>(playgroundsCache || [])
  const [loading, setLoading] = useState(!playgroundsCache)
  const [error, setError] = useState<string | null>(null)

  const fetchPlaygrounds = useCallback(async (forceRefresh = false) => {
    // Use cache if available and not expired, unless force refresh is requested
    const now = Date.now()
    const isCacheValid = playgroundsCache && lastFetchTime && (now - lastFetchTime < CACHE_DURATION)

    if (isCacheValid && !forceRefresh) {
      setPlaygrounds(playgroundsCache || [])
      setLoading(false)
      return playgroundsCache
    }

    // If there's already a fetch in progress, use that promise instead of starting a new request
    if (pendingFetchPromise && !forceRefresh) {
      setLoading(true)
      try {
        const result = await pendingFetchPromise
        setPlaygrounds(result)
        return result
      } catch (err) {
        setError(err instanceof Error ? err.message : 'An error occurred')
        return []
      } finally {
        setLoading(false)
      }
    }

    // Start a new fetch
    setLoading(true)

    const fetchPromise = (async () => {
      try {
        // Fetch active playgrounds from the materialized view
        const { data: playgroundsData, error: playgroundsError } = await supabase
          .from('v_active_playgrounds')
          .select('*')

        if (playgroundsError) throw playgroundsError

        // Convert playground location to coordinates
        const playgroundsWithCoordinates = (playgroundsData || []).map((playground: PlaygroundFromView) => ({
          ...playground,
          latitude: playground.location.coordinates[1],
          longitude: playground.location.coordinates[0]
        }))

        // Update cache
        playgroundsCache = playgroundsWithCoordinates
        lastFetchTime = now

        setPlaygrounds(playgroundsWithCoordinates)
        return playgroundsWithCoordinates
      } catch (err) {
        setError(err instanceof Error ? err.message : 'An error occurred')
        throw err
      } finally {
        setLoading(false)
        // Clear the pending promise reference when done
        pendingFetchPromise = null
      }
    })()

    // Store the promise for deduplication
    pendingFetchPromise = fetchPromise

    return fetchPromise
  }, [])

  useEffect(() => {
    fetchPlaygrounds()
  }, [fetchPlaygrounds])

  return {
    playgrounds,
    loading,
    error,
    refreshPlaygrounds: () => fetchPlaygrounds(true)
  }
}
