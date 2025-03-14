-- Drop existing view and function if exists
DROP FUNCTION IF EXISTS get_playgrounds_with_ratings_in_bbox;
DROP VIEW IF EXISTS v_active_playgrounds_with_ratings;

-- Create view that combines playground data with ratings
CREATE VIEW v_active_playgrounds_with_ratings
WITH (security_invoker=true)
AS
SELECT
  vap.*,
  vpr.avg_rating,
  vpr.total_ratings,
  CASE
    WHEN auth.uid() IS NOT NULL THEN
      (SELECT rating FROM ratings WHERE playground_id = vap.id AND user_id = auth.uid())
    ELSE NULL
  END as user_rating
FROM v_active_playgrounds vap
LEFT JOIN v_playground_ratings vpr ON vpr.playground_id = vap.id;

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
SECURITY INVOKER
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
