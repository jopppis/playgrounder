-- Create edited_playgrounds table
CREATE TABLE edited_playgrounds (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  original_id UUID NOT NULL REFERENCES playgrounds(id) ON DELETE CASCADE,
  proposal_id UUID NOT NULL REFERENCES playground_edit_proposals(id) ON DELETE CASCADE,
  name TEXT,
  has_supervised_activities BOOLEAN,
  is_deleted BOOLEAN NOT NULL DEFAULT FALSE,
  reverted_at TIMESTAMP WITH TIME ZONE,
  reverted_by UUID REFERENCES auth.users(id),
  created_at TIMESTAMP WITH TIME ZONE DEFAULT TIMEZONE('utc'::text, NOW()) NOT NULL,
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT TIMEZONE('utc'::text, NOW()) NOT NULL
);

-- Create indexes
CREATE INDEX idx_edited_playgrounds_original ON edited_playgrounds(original_id);
CREATE INDEX idx_edited_playgrounds_proposal ON edited_playgrounds(proposal_id);
CREATE INDEX idx_edited_playgrounds_reverted ON edited_playgrounds(reverted_at) WHERE reverted_at IS NULL;

-- Enable RLS
ALTER TABLE edited_playgrounds ENABLE ROW LEVEL SECURITY;

-- Create RLS policies
-- Only admins can view edited playgrounds
CREATE POLICY "Only admins can view edited playgrounds"
ON edited_playgrounds FOR SELECT
USING (
  EXISTS (
    SELECT 1 FROM admin_users WHERE user_id = auth.uid()
  )
);

-- Only admins can insert/update/delete edited playgrounds
CREATE POLICY "Only admins can insert edited playgrounds"
ON edited_playgrounds FOR INSERT
WITH CHECK (
  EXISTS (
    SELECT 1 FROM admin_users WHERE user_id = auth.uid()
  )
);

CREATE POLICY "Only admins can update edited playgrounds"
ON edited_playgrounds FOR UPDATE
USING (
  EXISTS (
    SELECT 1 FROM admin_users WHERE user_id = auth.uid()
  )
);

CREATE POLICY "Only admins can delete edited playgrounds"
ON edited_playgrounds FOR DELETE
TO authenticated
USING (
  EXISTS (
    SELECT 1 FROM admin_users WHERE user_id = auth.uid()
  )
);

-- Create trigger to update updated_at
CREATE TRIGGER update_edited_playgrounds_updated_at
BEFORE UPDATE ON edited_playgrounds
FOR EACH ROW
EXECUTE FUNCTION update_updated_at_column();

-- Create materialized view for active playgrounds
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

-- Create secure function to refresh the materialized view
CREATE OR REPLACE FUNCTION refresh_active_playgrounds()
RETURNS TRIGGER
LANGUAGE plpgsql
SECURITY DEFINER
AS $$
BEGIN
  IF EXISTS (
    SELECT 1 FROM admin_users WHERE user_id = auth.uid()
  ) THEN
    REFRESH MATERIALIZED VIEW CONCURRENTLY v_active_playgrounds;
  END IF;
  RETURN NULL;
END;
$$;

-- Create triggers to refresh the materialized view
CREATE TRIGGER refresh_active_playgrounds_on_edit
AFTER INSERT OR UPDATE OR DELETE ON edited_playgrounds
FOR EACH STATEMENT
EXECUTE FUNCTION refresh_active_playgrounds();

CREATE TRIGGER refresh_active_playgrounds_on_playground
AFTER INSERT OR UPDATE OR DELETE ON playgrounds
FOR EACH STATEMENT
EXECUTE FUNCTION refresh_active_playgrounds();

-- Initial refresh of the materialized view
REFRESH MATERIALIZED VIEW v_active_playgrounds;
