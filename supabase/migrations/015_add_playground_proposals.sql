-- Add proposed_location column for new playground proposals
ALTER TABLE playground_edit_proposals
ALTER COLUMN playground_id DROP NOT NULL;

-- Add proposed_location column for new playground proposals
ALTER TABLE playground_edit_proposals
ADD COLUMN proposed_location GEOGRAPHY(POINT);

-- Add is_new_playground column to track new playground proposals
ALTER TABLE playground_edit_proposals
ADD COLUMN is_new_playground BOOLEAN NOT NULL DEFAULT FALSE;

-- Add constraint to ensure either playground_id is set or it's a new playground proposal
ALTER TABLE playground_edit_proposals
ADD CONSTRAINT playground_edit_proposals_check_type
CHECK (
  (playground_id IS NOT NULL AND proposed_location IS NULL) OR
  (playground_id IS NULL AND proposed_location IS NOT NULL)
);

-- Create index for proposed location
CREATE INDEX idx_playground_edit_proposals_location ON playground_edit_proposals USING GIST(proposed_location);

-- Add 'community' as a new value to the playground_data_source_type enum
ALTER TYPE playground_data_source_type ADD VALUE IF NOT EXISTS 'community';

-- Only admins can insert new playgrounds
CREATE POLICY "Only admins can insert new playgrounds"
ON playgrounds FOR INSERT
WITH CHECK (
  EXISTS (
    SELECT 1 FROM admin_users WHERE user_id = auth.uid()
  )
);
