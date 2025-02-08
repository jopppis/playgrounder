import { useEffect, useState } from 'react'
import { supabase } from '../lib/supabaseClient'
import { Visit } from '../types/database.types'
import { useAuth } from './useAuth'

export const useVisits = () => {
  const [visits, setVisits] = useState<Visit[]>([])
  const [loading, setLoading] = useState(true)
  const [error, setError] = useState<string | null>(null)
  const { user } = useAuth()

  useEffect(() => {
    const fetchVisits = async () => {
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
    }

    fetchVisits()
  }, [user])

  return { visits, loading, error }
}
