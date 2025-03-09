import { useCallback, useEffect, useState } from 'react'
import { supabase } from '../lib/supabaseClient'
import { useAuth } from './useAuth'

export interface PlaygroundRating {
  playground_id: string
  avg_rating: number | null
  total_ratings: number
  user_rating: number | null
}

// Module-level cache
let ratingsCache: PlaygroundRating[] | null = null
let lastFetchTime: number | null = null
const CACHE_DURATION = 5 * 60 * 1000 // 5 minutes in milliseconds

// Request deduplication - store the pending promise
let pendingFetchPromise: Promise<PlaygroundRating[]> | null = null

export const useAllRatings = () => {
  const [ratings, setRatings] = useState<PlaygroundRating[]>(ratingsCache || [])
  const [loading, setLoading] = useState(!ratingsCache)
  const [error, setError] = useState<string | null>(null)
  const { user } = useAuth()

  const fetchRatings = useCallback(async (forceRefresh = false, playgroundId?: string) => {
    // Use cache if available and not expired, unless force refresh is requested
    const now = Date.now()
    const isCacheValid = ratingsCache && lastFetchTime && (now - lastFetchTime < CACHE_DURATION)

    if (isCacheValid && !forceRefresh && !playgroundId) {
      setRatings(ratingsCache || [])
      setLoading(false)
      return ratingsCache || []
    }

    // If there's already a fetch in progress and we're not requesting a specific playground,
    // use that promise instead of starting a new request
    if (pendingFetchPromise && !forceRefresh && !playgroundId) {
      setLoading(true)
      try {
        const result = await pendingFetchPromise
        setRatings(result)
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
        // Fetch public ratings
        const query = supabase
          .from('playground_ratings')
          .select('playground_id, avg_rating, total_ratings')

        if (playgroundId) {
          query.eq('playground_id', playgroundId)
        }

        const { data, error } = await query

        if (error) throw error

        // If user is logged in, fetch their ratings
        let userRatings: { [key: string]: number } = {}
        if (user) {
          const userQuery = supabase
            .from('ratings')
            .select('playground_id, rating')
            .eq('user_id', user.id)

          if (playgroundId) {
            userQuery.eq('playground_id', playgroundId)
          }

          const { data: userRatingsData, error: userError } = await userQuery

          if (userError) throw userError

          if (userRatingsData) {
            userRatings = Object.fromEntries(
              userRatingsData.map(r => [r.playground_id, r.rating])
            )
          }
        }

        // Combine public and user ratings
        const combinedRatings = (data || []).map(rating => ({
          ...rating,
          user_rating: userRatings[rating.playground_id] || null
        }))

        // Only update cache if we're fetching all ratings (not a specific playground)
        if (!playgroundId) {
          ratingsCache = combinedRatings
          lastFetchTime = now
        }

        setRatings(prevRatings => {
          // If we're fetching a specific playground, update just that one in the state
          if (playgroundId && combinedRatings.length === 1) {
            const updatedRating = combinedRatings[0]
            return prevRatings.map(r =>
              r.playground_id === playgroundId ? updatedRating : r
            )
          }
          // Otherwise return all ratings
          return combinedRatings
        })

        return combinedRatings
      } catch (err) {
        setError(err instanceof Error ? err.message : 'An error occurred')
        throw err
      } finally {
        setLoading(false)
        // Clear the pending promise reference when done
        if (!playgroundId) {
          pendingFetchPromise = null
        }
      }
    })()

    // Store the promise for deduplication (only if fetching all ratings)
    if (!playgroundId) {
      pendingFetchPromise = fetchPromise
    }

    return fetchPromise
  }, [user])

  useEffect(() => {
    fetchRatings()
  }, [fetchRatings])

  return {
    ratings,
    loading,
    error,
    refreshRatings: (playgroundId?: string) => fetchRatings(true, playgroundId)
  }
}
