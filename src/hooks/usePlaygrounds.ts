import { useCallback, useState } from 'react';
import { supabase } from '../lib/supabaseClient';
import { PlaygroundWithCoordinatesAndRatings } from '../types/database.types';
import { BBox, usePlaygroundFetcher } from './usePlaygroundFetcher';

const BBOX_PADDING_FACTOR = 10; // How much to expand the bbox for prefetching
const ZOOM_THRESHOLD = 11; // Zoom level at which we switch between full and bbox fetching

export type { BBox } from './usePlaygroundFetcher';

export const usePlaygrounds = () => {
  const [playgrounds, setPlaygrounds] = useState<PlaygroundWithCoordinatesAndRatings[]>([]);
  const [loading, setLoading] = useState(false);
  const [lastFetchedBBox, setLastFetchedBBox] = useState<BBox | null>(null);
  const [hasAllPlaygrounds, setHasAllPlaygrounds] = useState(false);
  const { getPlaygrounds } = usePlaygroundFetcher();

  const expandBBox = useCallback((bbox: BBox): BBox => {
    const lonDiff = bbox.maxLon - bbox.minLon;
    const latDiff = bbox.maxLat - bbox.minLat;
    const lonPadding = (lonDiff * (BBOX_PADDING_FACTOR - 1)) / 2;
    const latPadding = (latDiff * (BBOX_PADDING_FACTOR - 1)) / 2;

    return {
      minLon: bbox.minLon - lonPadding,
      maxLon: bbox.maxLon + lonPadding,
      minLat: bbox.minLat - latPadding,
      maxLat: bbox.maxLat + latPadding,
    };
  }, []);

  const isContainedInCachedArea = useCallback(
    (bbox: BBox): boolean => {
      if (hasAllPlaygrounds) return true;

      if (!lastFetchedBBox) return false;

      return (
        bbox.minLon >= lastFetchedBBox.minLon &&
        bbox.maxLon <= lastFetchedBBox.maxLon &&
        bbox.minLat >= lastFetchedBBox.minLat &&
        bbox.maxLat <= lastFetchedBBox.maxLat
      );
    },
    [lastFetchedBBox, hasAllPlaygrounds],
  );

  const refreshPlaygrounds = useCallback(
    async (bbox: BBox | null, zoomLevel: number, forceRefresh = false) => {
      try {
        setLoading(true);

        // If zoom level is low or no bbox, fetch all playgrounds
        const shouldFetchAll = !bbox || zoomLevel <= ZOOM_THRESHOLD;

        // Skip fetch if we already have all playgrounds
        if (shouldFetchAll && hasAllPlaygrounds && !forceRefresh) {
          return;
        }

        // Skip fetch if current bbox is contained in cached area
        if (!shouldFetchAll && bbox && !forceRefresh && isContainedInCachedArea(bbox)) {
          return;
        }

        // For high zoom levels, expand the bbox before fetching
        const fetchBBox = shouldFetchAll ? null : expandBBox(bbox!);

        const newPlaygrounds = await getPlaygrounds(fetchBBox, forceRefresh);
        setPlaygrounds(newPlaygrounds);
        setLastFetchedBBox(fetchBBox);
        setHasAllPlaygrounds(shouldFetchAll);
      } catch (error) {
        console.error('Error fetching playgrounds:', error);
      } finally {
        setLoading(false);
      }
    },
    [getPlaygrounds, hasAllPlaygrounds, isContainedInCachedArea, expandBBox],
  );

  const refreshSinglePlayground = useCallback(async (playgroundId: string) => {
    try {
      // Fetch just this playground's updated data
      const { data: updatedPlayground, error } = await supabase
        .from('v_active_playgrounds_with_ratings')
        .select('*')
        .eq('id', playgroundId)
        .single();

      if (error) {
        console.error('Error fetching updated playground:', error);
        return;
      }

      // Transform the playground data to include latitude and longitude
      const transformedPlayground: PlaygroundWithCoordinatesAndRatings = {
        ...updatedPlayground,
        latitude: updatedPlayground.location.coordinates[1],
        longitude: updatedPlayground.location.coordinates[0],
      };

      // Update this playground in the local state
      setPlaygrounds((prevPlaygrounds) =>
        prevPlaygrounds.map((p) => (p.id === playgroundId ? transformedPlayground : p)),
      );
    } catch (error) {
      console.error('Error refreshing playground:', error);
    }
  }, []);

  return {
    playgrounds,
    loading,
    refreshPlaygrounds,
    hasAllPlaygrounds,
    refreshSinglePlayground,
  };
};
