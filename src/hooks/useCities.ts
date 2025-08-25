import { useCallback, useEffect, useRef, useState } from 'react';
import { useTranslation } from 'react-i18next';
import { supabase } from '../lib/supabaseClient';

export const useCities = () => {
  const { t } = useTranslation();
  const [cities, setCities] = useState<{ label: string; value: string | null }[]>([]);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const initialFetchDoneRef = useRef(false);

  const fetchCities = useCallback(async () => {
    // Skip if we're already loading
    if (loading) return;

    setLoading(true);
    try {
      const { data, error } = await supabase.from('v_distinct_cities').select('city');

      if (error) throw error;

      setCities([
        { label: t('allCities'), value: null },
        ...data
          .filter(({ city }) => city !== null)
          .map(({ city }) => ({
            label: city!,
            value: city!.toLowerCase(),
          })),
        { label: t('playground.noCity'), value: 'no_city' },
      ]);
    } catch (err) {
      setError(err instanceof Error ? err.message : 'An error occurred');
    } finally {
      setLoading(false);
    }
  }, [t, loading]);

  useEffect(() => {
    if (!initialFetchDoneRef.current) {
      initialFetchDoneRef.current = true;
      fetchCities();
    }
  }, [fetchCities]);

  return {
    cities,
    loading,
    error,
    refreshCities: fetchCities,
  };
};
