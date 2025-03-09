import { useCallback, useState } from 'react'
import { useTranslation } from 'react-i18next'
import { supabase } from '../lib/supabaseClient'
import { useAuth } from './useAuth'

export const usePlaygroundEdits = () => {
  const { user } = useAuth()
  const [loading, setLoading] = useState(false)
  const [error, setError] = useState<string | null>(null)
  const { t } = useTranslation()

  const proposeNameChange = useCallback(
    async (
      playgroundId: string,
      proposedName: string | null,
      hasSupervised: boolean | null = null,
      reason: string | null = null
    ): Promise<{ error: string | null }> => {
      if (!user) {
        return { error: t('common.loginRequired') }
      }

      setLoading(true)
      setError(null)

      try {
        // First verify that the playground exists
        const { data: playgroundData, error: playgroundError } = await supabase
          .from('playgrounds')
          .select('id')
          .eq('id', playgroundId)
          .single()

        if (playgroundError || !playgroundData) {
          const errorMsg = playgroundError?.message || 'Playground not found'
          setError(errorMsg)
          return { error: errorMsg }
        }

        // Now insert the proposal
        const { error: supabaseError } = await supabase
          .from('playground_edit_proposals')
          .insert({
            playground_id: playgroundId,
            user_id: user.id,
            proposed_name: proposedName,
            delete_playground: false,
            has_supervised_activities: hasSupervised,
            reason
          })

        if (supabaseError) {
          console.error('Error inserting proposal:', supabaseError)
          setError(supabaseError.message)
          return { error: supabaseError.message }
        }

        return { error: null }
      } catch (err) {
        console.error('Exception in proposeNameChange:', err)
        const errorMessage = err instanceof Error ? err.message : String(err)
        setError(errorMessage)
        return { error: errorMessage }
      } finally {
        setLoading(false)
      }
    },
    [user, t]
  )

  const proposePlaygroundDeletion = useCallback(
    async (playgroundId: string, reason: string | null = null): Promise<{ error: string | null }> => {
      if (!user) {
        return { error: t('common.loginRequired') }
      }

      setLoading(true)
      setError(null)

      try {
        // First verify that the playground exists
        const { data: playgroundData, error: playgroundError } = await supabase
          .from('playgrounds')
          .select('id')
          .eq('id', playgroundId)
          .single()

        if (playgroundError || !playgroundData) {
          const errorMsg = playgroundError?.message || 'Playground not found'
          setError(errorMsg)
          return { error: errorMsg }
        }

        // Now insert the proposal
        const { error: supabaseError } = await supabase
          .from('playground_edit_proposals')
          .insert({
            playground_id: playgroundId,
            user_id: user.id,
            proposed_name: null,
            delete_playground: true,
            has_supervised_activities: null,
            reason
          })

        if (supabaseError) {
          console.error('Error inserting deletion proposal:', supabaseError)
          setError(supabaseError.message)
          return { error: supabaseError.message }
        }

        return { error: null }
      } catch (err) {
        console.error('Exception in proposePlaygroundDeletion:', err)
        const errorMessage = err instanceof Error ? err.message : String(err)
        setError(errorMessage)
        return { error: errorMessage }
      } finally {
        setLoading(false)
      }
    },
    [user, t]
  )

  return {
    loading,
    error,
    proposeNameChange,
    proposePlaygroundDeletion
  }
}
