import { useState, useEffect } from 'react'
import { supabase } from '../lib/supabaseClient'
import type { PlaygroundWithCoordinates } from '../types/database.types'

export const usePlaygrounds = () => {
  const [playgrounds, setPlaygrounds] = useState<PlaygroundWithCoordinates[]>([])
  const [loading, setLoading] = useState(true)
  const [error, setError] = useState<string | null>(null)

  useEffect(() => {
    const fetchPlaygrounds = async () => {
      try {
        const { data, error } = await supabase
          .from('playgrounds')
          .select('id, name, description, address, created_at, location')

        if (error) throw error

        // Transform the data to include latitude and longitude
        const transformedData = data?.map(playground => ({
          ...playground,
          latitude: playground.location.coordinates[1],
          longitude: playground.location.coordinates[0],
        })) || []

        setPlaygrounds(transformedData)
      } catch (err) {
        setError(err instanceof Error ? err.message : 'An error occurred')
      } finally {
        setLoading(false)
      }
    }

    fetchPlaygrounds()
  }, [])

  return { playgrounds, loading, error }
}
