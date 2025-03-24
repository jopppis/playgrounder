import { useCallback, useEffect, useState } from 'react';
import { supabase } from '../lib/supabaseClient';
import { useAuth } from './useAuth';

interface UserPreferences {
  defaultPublicRatings: boolean;
}

export const useUserPreferences = () => {
  const [preferences, setPreferences] = useState<UserPreferences>({
    defaultPublicRatings: false,
  });
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);
  const { user } = useAuth();

  const fetchPreferences = useCallback(async () => {
    if (!user) {
      setPreferences({
        defaultPublicRatings: false,
      });
      setLoading(false);
      return;
    }

    try {
      const { data, error } = await supabase
        .from('user_preferences')
        .select('*')
        .eq('user_id', user.id)
        .maybeSingle();

      if (error) throw error;

      if (data) {
        setPreferences({
          defaultPublicRatings: data.default_public_ratings,
        });
      } else {
        const { error: insertError } = await supabase.from('user_preferences').insert({
          user_id: user.id,
          default_public_ratings: false,
        });

        if (insertError) throw insertError;
      }
    } catch (err) {
      setError(err instanceof Error ? err.message : 'An error occurred');
    } finally {
      setLoading(false);
    }
  }, [user]);

  const updateDefaultPublicRatings = async (value: boolean) => {
    if (!user) return;

    const previousValue = preferences.defaultPublicRatings;

    try {
      setPreferences((prev) => ({
        ...prev,
        defaultPublicRatings: value,
      }));

      setError(null);

      const { error } = await supabase.from('user_preferences').upsert(
        {
          user_id: user.id,
          default_public_ratings: value,
        },
        {
          onConflict: 'user_id',
        },
      );

      if (error) {
        setPreferences((prev) => ({
          ...prev,
          defaultPublicRatings: previousValue,
        }));
        throw error;
      }
    } catch (err) {
      setError(err instanceof Error ? err.message : 'An error occurred');
      setPreferences((prev) => ({
        ...prev,
        defaultPublicRatings: previousValue,
      }));
    }
  };

  useEffect(() => {
    fetchPreferences();
  }, [fetchPreferences]);

  return {
    preferences,
    loading,
    error,
    updateDefaultPublicRatings,
  };
};
