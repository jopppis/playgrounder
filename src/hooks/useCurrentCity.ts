import { useCallback, useState } from 'react'
import { supabase } from '../lib/supabaseClient'

export const useCurrentCity = () => {
  const [currentCity, setCurrentCity] = useState<string | null>(null)
  const [loading, setLoading] = useState(false)
  const [error, setError] = useState<string | null>(null)

  const updateCurrentCity = useCallback(async (lat: number, lng: number) => {
    setLoading(true)
    try {
      const { data, error } = await supabase.rpc('get_closest_playground_city', {
        lat,
        lng
      })

      if (error) throw error

      setCurrentCity(data)
      setError(null)
    } catch (err) {
      setError(err instanceof Error ? err.message : 'An error occurred')
    } finally {
      setLoading(false)
    }
  }, [])

  return { currentCity, loading, error, updateCurrentCity }
}
