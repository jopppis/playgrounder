import { useCallback, useEffect, useState } from 'react';
import { supabase } from '../lib/supabaseClient';
import { useAuth } from './useAuth';

interface PlaygroundRating {
  avgRating: number | null;
  totalRatings: number;
  userRating: number | null;
  isPublic: boolean;
}

export const useRatings = (
  playgroundId: string,
  initialAvgRating: number | null = null,
  initialTotalRatings: number = 0,
) => {
  const [rating, setRating] = useState<PlaygroundRating>({
    avgRating: initialAvgRating,
    totalRatings: initialTotalRatings,
    userRating: null,
    isPublic: false,
  });
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);
  const { user, loading: authLoading } = useAuth();

  // Reset rating state when user logs out
  useEffect(() => {
    if (!authLoading && !user) {
      setRating((prev) => ({
        ...prev,
        userRating: null,
        isPublic: false,
      }));
      setLoading(false);
    }
  }, [user, authLoading]);

  const fetchRatings = useCallback(async () => {
    if (authLoading) {
      return;
    }

    try {
      // Only fetch the user's rating data if user is logged in
      if (user) {
        const { data: ratingData, error: ratingError } = await supabase
          .from('ratings')
          .select('rating, is_public')
          .eq('playground_id', playgroundId)
          .eq('user_id', user.id)
          .maybeSingle();

        if (!ratingError && ratingData) {
          setRating((prev) => ({
            ...prev,
            userRating: ratingData.rating,
            isPublic: ratingData.is_public,
          }));
        }
      }
    } catch (err) {
      setError(err instanceof Error ? err.message : 'An error occurred');
    } finally {
      setLoading(false);
    }
  }, [playgroundId, user, authLoading]);

  // Fetch ratings when user or playground changes
  useEffect(() => {
    if (user) {
      setLoading(true);
      fetchRatings();
    }
  }, [user, playgroundId, fetchRatings]);

  const submitRating = async (value: number, isPublic: boolean, visitId: string) => {
    if (!user) return;

    try {
      // Calculate optimistic updates
      const oldRating = rating.userRating;
      const wasPublic = rating.isPublic;
      let newAvgRating = rating.avgRating;
      let newTotalRatings = rating.totalRatings;

      // Only update public stats if the rating is or was public
      if (isPublic || wasPublic) {
        // If this is a new public rating or changing from private to public
        if (oldRating === null || (!wasPublic && isPublic)) {
          newTotalRatings = rating.totalRatings + 1;
          if (rating.avgRating === null) {
            newAvgRating = value;
          } else {
            newAvgRating = (rating.avgRating * rating.totalRatings + value) / newTotalRatings;
          }
        }
        // If this is updating an existing public rating
        else if (wasPublic && isPublic) {
          newAvgRating =
            ((rating.avgRating || 0) * rating.totalRatings - oldRating + value) /
            rating.totalRatings;
        }
        // If changing from public to private
        else if (wasPublic && !isPublic) {
          newTotalRatings = rating.totalRatings - 1;
          if (newTotalRatings === 0) {
            newAvgRating = null;
          } else {
            newAvgRating =
              ((rating.avgRating || 0) * rating.totalRatings - oldRating) / newTotalRatings;
          }
        }
      }

      // Update state optimistically
      setRating((prev) => ({
        ...prev,
        userRating: value,
        isPublic: isPublic,
        ...(isPublic || wasPublic
          ? {
              avgRating: newAvgRating,
              totalRatings: newTotalRatings,
            }
          : {}),
      }));

      const { error } = await supabase.from('ratings').upsert(
        {
          playground_id: playgroundId,
          user_id: user.id,
          rating: value,
          is_public: isPublic,
          visit_id: visitId,
        },
        {
          onConflict: 'visit_id',
        },
      );

      if (error) throw error;

      // Fetch updated ratings to ensure accuracy
      await fetchRatings();
    } catch (err) {
      setError(err instanceof Error ? err.message : 'An error occurred');
      // Revert optimistic update on error
      await fetchRatings();
    }
  };

  const togglePublic = async () => {
    if (!user || rating.userRating === null) return;

    try {
      const oldIsPublic = rating.isPublic;
      const value = rating.userRating;

      // Calculate optimistic updates
      let newAvgRating = rating.avgRating;
      let newTotalRatings = rating.totalRatings;

      if (oldIsPublic) {
        // Going from public to private
        newTotalRatings = rating.totalRatings - 1;
        if (newTotalRatings === 0) {
          newAvgRating = null;
        } else {
          newAvgRating = ((rating.avgRating || 0) * rating.totalRatings - value) / newTotalRatings;
        }
      } else {
        // Going from private to public
        newTotalRatings = rating.totalRatings + 1;
        if (rating.avgRating === null) {
          newAvgRating = value;
        } else {
          newAvgRating = (rating.avgRating * rating.totalRatings + value) / newTotalRatings;
        }
      }

      // Update state optimistically
      setRating((prev) => ({
        ...prev,
        isPublic: !oldIsPublic,
        avgRating: newAvgRating,
        totalRatings: newTotalRatings,
      }));

      const { error } = await supabase
        .from('ratings')
        .update({ is_public: !oldIsPublic })
        .eq('playground_id', playgroundId)
        .eq('user_id', user.id);

      if (error) throw error;

      // Fetch updated ratings to ensure accuracy
      await fetchRatings();
    } catch (err) {
      setError(err instanceof Error ? err.message : 'An error occurred');
      // Revert optimistic update on error
      await fetchRatings();
    }
  };

  const clearRating = useCallback(() => {
    const wasPublic = rating.isPublic;
    const oldRating = rating.userRating;

    setRating((prev) => ({
      ...prev,
      userRating: null,
      isPublic: false,
      // Only update public stats if the rating was public
      ...(wasPublic && oldRating !== null
        ? {
            avgRating:
              prev.totalRatings > 1
                ? ((prev.avgRating || 0) * prev.totalRatings - oldRating) / (prev.totalRatings - 1)
                : null,
            totalRatings: prev.totalRatings - 1,
          }
        : {}),
    }));
  }, [rating.isPublic, rating.userRating]);

  return {
    rating,
    loading,
    error,
    submitRating,
    togglePublic,
    refresh: fetchRatings,
    clearRating,
  };
};
