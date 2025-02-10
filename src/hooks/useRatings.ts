import { useEffect, useState } from 'react'
import { supabase } from '../lib/supabaseClient'
import { Rating } from '../types/database.types'
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

  const fetchRatings = async () => {
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
  }

  useEffect(() => {
    fetchRatings()
  }, [playgroundId, user])

  const submitRating = async (newRating: number, isPublic: boolean) => {
    if (!user) return

    try {
      // First check if a rating exists
      const { data: existingRating } = await supabase
        .from('ratings')
        .select('id, is_public')
        .eq('playground_id', playgroundId)
        .eq('user_id', user.id)
        .single()

      let error
      if (existingRating) {
        const result = await supabase
          .from('ratings')
          .update({
            rating: newRating,
            is_public: isPublic
          })
          .eq('playground_id', playgroundId)
          .eq('user_id', user.id)
        error = result.error
      } else {
        const result = await supabase
          .from('ratings')
          .insert({
            playground_id: playgroundId,
            user_id: user.id,
            rating: newRating,
            is_public: isPublic
          })
        error = result.error
      }

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

  return { rating, loading, error, submitRating, togglePublic, refresh: fetchRatings }
}
