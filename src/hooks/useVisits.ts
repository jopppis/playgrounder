import { useCallback, useEffect, useState } from 'react';
import { supabase } from '../lib/supabaseClient';
import { Visit } from '../types/database.types';
import { useAuth } from './useAuth';

export const useVisits = () => {
  const [visits, setVisits] = useState<Visit[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);
  const { user } = useAuth();

  const fetchVisits = useCallback(async () => {
    setLoading(true);
    if (!user) {
      setVisits([]);
      setLoading(false);
      return;
    }

    try {
      const { data, error } = await supabase.from('visits').select('*').eq('user_id', user.id);

      if (error) throw error;

      setVisits(data || []);
    } catch (err) {
      setError(err instanceof Error ? err.message : 'An error occurred');
    } finally {
      setLoading(false);
    }
  }, [user]);

  // Function to update visits state immediately
  const updateVisitsState = useCallback(
    (playgroundId: string, isVisited: boolean) => {
      if (!user) return;

      if (isVisited) {
        const newVisit: Visit = {
          id: '', // Temporary placeholder - real ID will come from database
          playground_id: playgroundId,
          user_id: user.id,
          visited_at: new Date().toISOString(),
          notes: null,
        };
        setVisits((current) => [...current, newVisit]);
      } else {
        setVisits((current) => current.filter((visit) => visit.playground_id !== playgroundId));
      }
    },
    [user],
  );

  useEffect(() => {
    fetchVisits();

    // Set up real-time subscription
    const channel = supabase
      .channel('visits_changes')
      .on(
        'postgres_changes',
        {
          event: '*',
          schema: 'public',
          table: 'visits',
          filter: `user_id=eq.${user?.id}`,
        },
        () => {
          fetchVisits();
        },
      )
      .subscribe();

    return () => {
      channel.unsubscribe();
    };
  }, [user, fetchVisits]);

  const addVisit = async (
    playgroundId: string,
  ): Promise<{ error: string | null; visitId?: string }> => {
    if (!user) return { error: 'User not authenticated' };

    try {
      const { data, error } = await supabase
        .from('visits')
        .upsert(
          {
            playground_id: playgroundId,
            user_id: user.id,
            visited_at: new Date().toISOString(),
          },
          {
            onConflict: 'playground_id,user_id',
          },
        )
        .select('id')
        .single();

      if (error) {
        throw error;
      }

      // Update state only after successful database operation
      updateVisitsState(playgroundId, true);

      return { error: null, visitId: data?.id };
    } catch (err) {
      return { error: err instanceof Error ? err.message : 'An error occurred' };
    }
  };

  const removeVisit = async (playgroundId: string): Promise<{ error: string | null }> => {
    if (!user) return { error: 'User not authenticated' };

    try {
      const { error } = await supabase.from('visits').delete().match({
        playground_id: playgroundId,
        user_id: user.id,
      });

      if (error) {
        throw error;
      }

      // Update state only after successful database operation
      updateVisitsState(playgroundId, false);

      return { error: null };
    } catch (err) {
      return { error: err instanceof Error ? err.message : 'An error occurred' };
    }
  };

  return { visits, loading, error, refresh: fetchVisits, addVisit, removeVisit, updateVisitsState };
};
