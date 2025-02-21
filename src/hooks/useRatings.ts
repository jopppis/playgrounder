import { useCallback, useEffect, useState } from 'react'
import { supabase } from '../lib/supabaseClient'
import { useAuth } from './useAuth'

interface PlaygroundRating {
  avgRating: number | null
  totalRatings: number
  userRating: number | null
  isPublic: boolean
}

export const useRatings = (playgroundId: string) => {
  const [rating, setRating] = useState<PlaygroundRating>({
    avgRating: null,
    totalRatings: 0,
    userRating: null,
    isPublic: false
  })
  const [loading, setLoading] = useState(true)
  const [error, setError] = useState<string | null>(null)
  const { user } = useAuth()

  const fetchRatings = useCallback(async () => {
    try {
      // First get the user's rating directly from the ratings table
      let userRating = null
      let isPublic = false

      if (user) {
        const { data: ratingData, error: ratingError } = await supabase
          .from('ratings')
          .select('rating, is_public')
          .eq('playground_id', playgroundId)
          .eq('user_id', user.id)
          .maybeSingle()

        if (!ratingError && ratingData) {
          userRating = ratingData.rating
          isPublic = ratingData.is_public
        }
      }

      // Get the public ratings statistics from the view
      const { data: statsData, error: statsError } = await supabase
        .from('playground_ratings')
        .select('avg_rating, total_ratings')
        .eq('playground_id', playgroundId)
        .single()

      if (statsError && statsError.code !== 'PGRST116') throw statsError // Ignore not found error

      setRating({
        avgRating: statsData?.avg_rating || null,
        totalRatings: statsData?.total_ratings || 0,
        userRating,
        isPublic
      })
    } catch (err) {
      setError(err instanceof Error ? err.message : 'An error occurred')
    } finally {
      setLoading(false)
    }
  }, [playgroundId, user])

  useEffect(() => {
    fetchRatings()
  }, [fetchRatings])

  const submitRating = async (rating: number, isPublic: boolean, visitId: string) => {
    if (!user) return

    try {
      const { error } = await supabase
        .from('ratings')
        .upsert({
          playground_id: playgroundId,
          user_id: user.id,
          rating: rating,
          is_public: isPublic,
          visit_id: visitId
        },
        {
          onConflict: 'visit_id'
        }
      )

      if (error) throw error

      // Fetch updated ratings
      await fetchRatings()
    } catch (err) {
      setError(err instanceof Error ? err.message : 'An error occurred')
    }
  }

  const togglePublic = async () => {
    if (!user || rating.userRating === null) return

    try {
      const { error } = await supabase
        .from('ratings')
        .update({ is_public: !rating.isPublic })
        .eq('playground_id', playgroundId)
        .eq('user_id', user.id)

      if (error) throw error

      // Fetch updated ratings
      await fetchRatings()
    } catch (err) {
      setError(err instanceof Error ? err.message : 'An error occurred')
    }
  }

  // Add a function to set optimistic rating
  const setOptimisticRating = (optimisticRating: PlaygroundRating) => {
    setRating(optimisticRating)
  }

  return { rating, loading, error, submitRating, togglePublic, refresh: fetchRatings, setOptimisticRating }
}
