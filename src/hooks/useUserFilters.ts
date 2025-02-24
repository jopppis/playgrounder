import { useCallback, useEffect, useState } from 'react'
import { FilterOptions } from '../components/PlaygroundFilter'
import { supabase } from '../lib/supabaseClient'
import { UserFilter } from '../types/database.types'
import { useAuth } from './useAuth'

export const useUserFilters = () => {
  const [filters, setFilters] = useState<FilterOptions>({
    visitStatus: null,
    minStars: null,
    minUserStars: null,
    hasSupervised: null,
    city: null
  })
  const [loading, setLoading] = useState(true)
  const [error, setError] = useState<string | null>(null)
  const { user } = useAuth()

  const fetchFilters = useCallback(async () => {
    if (!user) {
      setFilters({
        visitStatus: null,
        minStars: null,
        minUserStars: null,
        hasSupervised: null,
        city: null
      })
      setLoading(false)
      return
    }

    try {
      const { data, error } = await supabase
        .from('user_filters')
        .select('*')
        .eq('user_id', user.id)
        .maybeSingle()

      if (error) throw error

      if (data) {
        setFilters({
          visitStatus: data.visit_status,
          minStars: data.min_stars,
          minUserStars: data.min_user_stars,
          hasSupervised: data.has_supervised_activities,
          city: data.city
        })
      }
    } catch (err) {
      setError(err instanceof Error ? err.message : 'An error occurred')
    } finally {
      setLoading(false)
    }
  }, [user])

  const updateFilters = useCallback(async (newFilters: FilterOptions) => {
    if (!user) return

    try {
      const filterData: Omit<UserFilter, 'id' | 'created_at' | 'updated_at'> = {
        user_id: user.id,
        visit_status: newFilters.visitStatus,
        min_stars: newFilters.minStars,
        min_user_stars: newFilters.minUserStars,
        has_supervised_activities: newFilters.hasSupervised,
        city: newFilters.city
      }

      const { error } = await supabase
        .from('user_filters')
        .upsert(filterData, {
          onConflict: 'user_id'
        })

      if (error) throw error

      setFilters(newFilters)
    } catch (err) {
      setError(err instanceof Error ? err.message : 'An error occurred')
      // Keep the old filters if update fails
      await fetchFilters()
    }
  }, [user, fetchFilters])

  useEffect(() => {
    fetchFilters()

    // Set up real-time subscription
    const channel = supabase.channel('user_filters_changes')
      .on('postgres_changes',
        {
          event: '*',
          schema: 'public',
          table: 'user_filters',
          filter: `user_id=eq.${user?.id}`
        },
        () => {
          fetchFilters()
        }
      )
      .subscribe()

    return () => {
      channel.unsubscribe()
    }
  }, [user, fetchFilters])

  return { filters, loading, error, updateFilters }
}
