-- Drop address and description columns from playgrounds table
ALTER TABLE playgrounds DROP COLUMN IF EXISTS address;
ALTER TABLE playgrounds DROP COLUMN IF EXISTS description;

-- Drop and recreate materialized view without address
DROP MATERIALIZED VIEW IF EXISTS v_active_playgrounds;

CREATE MATERIALIZED VIEW v_active_playgrounds
AS
SELECT
  p.id,
  p.location,
  COALESCE(
    (
      SELECT name
      FROM edited_playgrounds
      WHERE original_id = p.id
        AND reverted_at IS NULL
        AND name IS NOT NULL
      ORDER BY created_at DESC
      LIMIT 1
    ),
    p.name
  ) as name,
  COALESCE(
    (
      SELECT has_supervised_activities
      FROM edited_playgrounds
      WHERE original_id = p.id
        AND reverted_at IS NULL
        AND has_supervised_activities IS NOT NULL
      ORDER BY created_at DESC
      LIMIT 1
    ),
    p.has_supervised_activities
  ) as has_supervised_activities,
  p.city,
  p.data_source,
  p.created_at
FROM playgrounds p
WHERE NOT EXISTS (
  SELECT 1
  FROM edited_playgrounds
  WHERE original_id = p.id
    AND reverted_at IS NULL
    AND is_deleted = true
);

-- Create indexes on the materialized view
CREATE UNIQUE INDEX idx_active_playgrounds_id ON v_active_playgrounds(id);
CREATE INDEX idx_active_playgrounds_city ON v_active_playgrounds(city);
CREATE INDEX idx_active_playgrounds_location ON v_active_playgrounds USING GIST(location);

-- Revoke all permissions from v_active_playgrounds
REVOKE ALL ON v_active_playgrounds FROM PUBLIC;
REVOKE ALL ON v_active_playgrounds FROM authenticated;
REVOKE ALL ON v_active_playgrounds FROM anon;

-- Grant select permission to authenticated users
GRANT SELECT ON v_active_playgrounds TO authenticated;
GRANT SELECT ON v_active_playgrounds TO anon;
