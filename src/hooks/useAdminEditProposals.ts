import { useCallback, useEffect, useState } from 'react'
import { useTranslation } from 'react-i18next'
import { useAuth } from '../hooks/useAuth'
import { supabase } from '../lib/supabaseClient'
import { PlaygroundEditProposal, PlaygroundWithCoordinates } from '../types/database.types'
import { useToast } from './useToast'

// Type for edit proposals with playground data
export interface EditProposalWithPlayground extends PlaygroundEditProposal {
  playground: PlaygroundWithCoordinates
  edit?: {
    id: string
    reverted_at: string | null
    reverted_by: string | null
  }
}

interface PlaygroundWithLocation {
  location: {
    coordinates: [number, number] // [longitude, latitude]
  }
}

export const useAdminEditProposals = () => {
  const [proposals, setProposals] = useState<EditProposalWithPlayground[]>([])
  const [loading, setLoading] = useState(true)
  const [error, setError] = useState<string | null>(null)
  const toast = useToast()
  const { t } = useTranslation()
  const { user } = useAuth()

  const fetchProposals = useCallback(async () => {
    setLoading(true)
    setError(null)

    try {
      const { data: proposalsData, error: proposalsError } = await supabase
        .from('playground_edit_proposals')
        .select(`
          *,
          playground:playground_id(
            id,
            name,
            location,
            has_supervised_activities,
            city,
            data_source,
            created_at
          ),
          edit:edited_playgrounds(
            id,
            reverted_at,
            reverted_by
          )
        `)
        .order('created_at', { ascending: false })

      if (proposalsError) throw proposalsError

      // Convert playground location to coordinates for each proposal
      const proposalsWithCoordinates = proposalsData.map(proposal => {
        const playground = proposal.playground as PlaygroundWithLocation
        const edit = Array.isArray(proposal.edit) && proposal.edit.length > 0 ? proposal.edit[0] : null

        if (playground) {
          return {
            ...proposal,
            playground: {
              ...playground,
              latitude: playground.location.coordinates[1],
              longitude: playground.location.coordinates[0]
            },
            edit
          }
        }
        return proposal
      }) as EditProposalWithPlayground[]

      // Now fetch the current data from v_active_playgrounds for each proposal
      const playgroundIds = proposalsWithCoordinates
        .map(p => p.playground_id)
        .filter((id): id is string => id !== null)

      if (playgroundIds.length > 0) {
        const { data: activePlaygrounds, error: activeError } = await supabase
          .from('v_active_playgrounds')
          .select('*')
          .in('id', playgroundIds)

        if (!activeError && activePlaygrounds) {
          // Update the proposals with the current playground data
          const activePlaygroundMap = new Map(
            activePlaygrounds.map(p => [p.id, {
              ...p,
              latitude: p.location.coordinates[1],
              longitude: p.location.coordinates[0]
            }])
          )

          proposalsWithCoordinates.forEach(proposal => {
            const currentData = activePlaygroundMap.get(proposal.playground_id)
            if (currentData) {
              proposal.playground = currentData
            }
          })
        }
      }

      setProposals(proposalsWithCoordinates)
    } catch (err) {
      console.error('Error fetching proposals:', err)
      const errorMessage = err instanceof Error ? err.message : String(err)
      setError(errorMessage)
    } finally {
      setLoading(false)
    }
  }, [])

  const approveProposal = useCallback(async (proposalId: string, adminNotes?: string) => {
    setLoading(true)
    setError(null)

    try {
      // Get the proposal
      const { data: proposal, error: proposalError } = await supabase
        .from('playground_edit_proposals')
        .select('*')
        .eq('id', proposalId)
        .single()

      if (proposalError || !proposal) {
        throw new Error(proposalError?.message || 'Proposal not found')
      }

      // First update the proposal status
      const { error: statusError } = await supabase
        .from('playground_edit_proposals')
        .update({
          status: 'approved',
          admin_notes: adminNotes || null
        })
        .eq('id', proposalId)

      if (statusError) throw statusError

      // Then create the edit record
      const { error: editError } = await supabase
        .from('edited_playgrounds')
        .insert({
          original_id: proposal.playground_id,
          proposal_id: proposalId,
          name: proposal.proposed_name,
          has_supervised_activities: proposal.has_supervised_activities,
          is_deleted: proposal.delete_playground
        })

      // Restore the proposal status to pending if error occurs
      if (editError) {
      const { error: revertError } = await supabase
        .from('playground_edit_proposals')
        .update({
          status: 'pending',
          admin_notes: null
        })
          .eq('id', proposalId)

        if (revertError) throw revertError
      }

      if (editError) throw editError

      toast.showSuccess({
        title: t('admin.proposals.success.approveTitle'),
        description: t('admin.proposals.success.approveDescription')
      })

      // Refresh proposals
      await fetchProposals()
    } catch (err) {
      console.error('Error approving proposal:', err)
      const errorMessage = err instanceof Error ? err.message : String(err)
      setError(errorMessage)
      toast.showError({
        title: t('admin.proposals.error.approveTitle'),
        description: errorMessage
      })
    } finally {
      setLoading(false)
    }
  }, [fetchProposals, t, toast])

  const rejectProposal = useCallback(async (proposalId: string, adminNotes: string) => {
    setLoading(true)
    setError(null)

    try {
      const { error: statusError } = await supabase
        .from('playground_edit_proposals')
        .update({
          status: 'rejected',
          admin_notes: adminNotes
        })
        .eq('id', proposalId)

      if (statusError) throw statusError

      toast.showSuccess({
        title: t('admin.proposals.success.rejectTitle'),
        description: t('admin.proposals.success.rejectDescription')
      })

      // Refresh proposals
      await fetchProposals()
    } catch (err) {
      console.error('Error rejecting proposal:', err)
      const errorMessage = err instanceof Error ? err.message : String(err)
      setError(errorMessage)
      toast.showError({
        title: t('admin.proposals.error.rejectTitle'),
        description: errorMessage
      })
    } finally {
      setLoading(false)
    }
  }, [fetchProposals, t, toast])

  const revertEdit = useCallback(async (editId: string) => {
    setLoading(true)
    setError(null)

    try {
      if (!user) {
        throw new Error('User not authenticated')
      }

      const { error: revertError } = await supabase
        .from('edited_playgrounds')
        .update({
          reverted_at: new Date().toISOString(),
          reverted_by: user.id
        })
        .eq('id', editId)

      if (revertError) throw revertError

      toast.showSuccess({
        title: t('admin.proposals.success.revertTitle'),
        description: t('admin.proposals.success.revertDescription')
      })

      // Refresh proposals
      await fetchProposals()
    } catch (err) {
      console.error('Error reverting edit:', err)
      const errorMessage = err instanceof Error ? err.message : String(err)
      setError(errorMessage)
      toast.showError({
        title: t('admin.proposals.error.revertTitle'),
        description: errorMessage
      })
    } finally {
      setLoading(false)
    }
  }, [fetchProposals, t, toast, user])

  useEffect(() => {
    fetchProposals()
  }, [fetchProposals])

  return {
    proposals,
    loading,
    error,
    fetchProposals,
    approveProposal,
    rejectProposal,
    revertEdit
  }
}
