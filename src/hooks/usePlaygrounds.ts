import { useCallback, useEffect, useState } from 'react'
import { supabase } from '../lib/supabaseClient'
import type { PlaygroundWithCoordinates } from '../types/database.types'

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
        const { data, error } = await supabase
          .from('playgrounds')
          .select('id, name, description, address, created_at, location, has_supervised_activities, city, data_source')

        if (error) throw error

        // Transform the data to include latitude and longitude
        const transformedData = data?.map(playground => ({
          ...playground,
          latitude: playground.location.coordinates[1],
          longitude: playground.location.coordinates[0],
        })) || []

        // Update cache
        playgroundsCache = transformedData
        lastFetchTime = now

        setPlaygrounds(transformedData)
        return transformedData
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
