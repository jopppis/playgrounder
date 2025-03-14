-- Create function for querying playgrounds within a bbox
CREATE OR REPLACE FUNCTION get_playgrounds_in_bbox(
  min_lon float,
  min_lat float,
  max_lon float,
  max_lat float
)
RETURNS TABLE (
  LIKE v_active_playgrounds
)
LANGUAGE sql
STABLE
SET search_path = extensions,public
AS $$
  SELECT *
  FROM v_active_playgrounds
  WHERE location && ST_MakeEnvelope(min_lon, min_lat, max_lon, max_lat, 4326);
$$;

-- Add comment
COMMENT ON FUNCTION get_playgrounds_in_bbox IS 'Returns playgrounds within the specified bounding box. Coordinates should be in WGS84 (EPSG:4326).';
