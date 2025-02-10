import { useCallback, useEffect, useState } from 'react'
import { supabase } from '../lib/supabaseClient'
import { Visit } from '../types/database.types'
import { useAuth } from './useAuth'

export const useVisits = () => {
  const [visits, setVisits] = useState<Visit[]>([])
  const [loading, setLoading] = useState(true)
  const [error, setError] = useState<string | null>(null)
  const { user } = useAuth()

  const fetchVisits = useCallback(async () => {
    setLoading(true)
    if (!user) {
      setVisits([])
      setLoading(false)
      return
    }

    try {
      const { data, error } = await supabase
        .from('visits')
        .select('*')
        .eq('user_id', user.id)

      if (error) throw error

      setVisits(data || [])
    } catch (err) {
      setError(err instanceof Error ? err.message : 'An error occurred')
    } finally {
      setLoading(false)
    }
  }, [user])

  // Function to update visits state immediately
  const updateVisitsState = useCallback((playgroundId: string, isVisited: boolean) => {
    if (!user) return

    if (isVisited) {
      const newVisit: Visit = {
        id: crypto.randomUUID(),
        playground_id: playgroundId,
        user_id: user.id,
        visited_at: new Date().toISOString(),
        notes: null
      }
      setVisits(current => [...current, newVisit])
    } else {
      setVisits(current =>
        current.filter(visit => visit.playground_id !== playgroundId)
      )
    }
  }, [user])

  useEffect(() => {
    fetchVisits()

    // Set up real-time subscription
    const channel = supabase.channel('visits_changes')
      .on('postgres_changes',
        {
          event: '*',
          schema: 'public',
          table: 'visits',
          filter: `user_id=eq.${user?.id}`
        },
        () => {
          fetchVisits()
        }
      )
      .subscribe()

    return () => {
      channel.unsubscribe()
    }
  }, [user, fetchVisits])

  return { visits, loading, error, refresh: fetchVisits, updateVisitsState }
}
