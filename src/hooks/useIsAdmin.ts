import { useCallback, useEffect, useState } from 'react'
import { supabase } from '../lib/supabaseClient'
import { useAuth } from './useAuth'

export const useIsAdmin = () => {
  const { user } = useAuth()
  const [isAdmin, setIsAdmin] = useState(false)
  const [loading, setLoading] = useState(true)

  const checkAdminStatus = useCallback(async () => {
    if (!user) {
      setIsAdmin(false)
      setLoading(false)
      return
    }

    try {
      const { data, error } = await supabase
        .from('admin_users')
        .select('user_id')
        .eq('user_id', user.id)
        .single()

      if (error) {
        if (error.code !== 'PGRST116') {
          console.error('Error checking admin status:', error)
        }
        setIsAdmin(false)
      } else {
        setIsAdmin(!!data)
      }
    } catch (err) {
      console.error('Exception checking admin status:', err)
      setIsAdmin(false)
    } finally {
      setLoading(false)
    }
  }, [user])

  useEffect(() => {
    checkAdminStatus()
  }, [checkAdminStatus])

  return { isAdmin, loading }
}
