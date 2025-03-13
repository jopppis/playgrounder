-- Drop existing view if it exists
DROP VIEW IF EXISTS v_active_playgrounds_with_ratings;

-- Create view that combines playground data with ratings
CREATE VIEW v_active_playgrounds_with_ratings AS
SELECT
  vap.*,
  pr.avg_rating,
  pr.total_ratings,
  CASE
    WHEN auth.uid() IS NOT NULL THEN
      (SELECT rating FROM ratings WHERE playground_id = vap.id AND user_id = auth.uid())
    ELSE NULL
  END as user_rating
FROM v_active_playgrounds vap
LEFT JOIN playground_ratings pr ON pr.playground_id = vap.id;

-- Drop existing function if it exists
DROP FUNCTION IF EXISTS get_playgrounds_with_ratings_in_bbox;

-- Create function to get playgrounds with ratings in a bounding box
CREATE OR REPLACE FUNCTION get_playgrounds_with_ratings_in_bbox(
  min_lon float,
  min_lat float,
  max_lon float,
  max_lat float
)
RETURNS TABLE (
  LIKE v_active_playgrounds_with_ratings
)
LANGUAGE sql
SECURITY DEFINER
SET search_path = public,extensions
AS $$
  SELECT *
  FROM v_active_playgrounds_with_ratings
  WHERE location && ST_MakeEnvelope(min_lon, min_lat, max_lon, max_lat, 4326);
$$;

-- Revoke all permissions from active_playgrounds_with_ratings
REVOKE ALL ON v_active_playgrounds_with_ratings FROM PUBLIC;
REVOKE ALL ON v_active_playgrounds_with_ratings FROM authenticated;
REVOKE ALL ON v_active_playgrounds_with_ratings FROM anon;

-- Grant permissions
GRANT SELECT ON v_active_playgrounds_with_ratings TO authenticated;
GRANT SELECT ON v_active_playgrounds_with_ratings TO anon;

-- Revoke
