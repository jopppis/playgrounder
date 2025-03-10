-- Create playground_edit_proposals table
CREATE TABLE playground_edit_proposals (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  playground_id UUID NOT NULL REFERENCES playgrounds(id) ON DELETE CASCADE,
  user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  proposed_name TEXT,
  delete_playground BOOLEAN NOT NULL DEFAULT FALSE,
  has_supervised_activities BOOLEAN,
  reason TEXT,
  status TEXT NOT NULL DEFAULT 'pending' CHECK (status IN ('pending', 'approved', 'rejected')),
  admin_notes TEXT,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT TIMEZONE('utc'::text, NOW()) NOT NULL,
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT TIMEZONE('utc'::text, NOW()) NOT NULL
);

-- Create indexes
CREATE INDEX idx_playground_edit_proposals_playground ON playground_edit_proposals(playground_id);
CREATE INDEX idx_playground_edit_proposals_user ON playground_edit_proposals(user_id);
CREATE INDEX idx_playground_edit_proposals_status ON playground_edit_proposals(status);

-- Enable RLS
ALTER TABLE playground_edit_proposals ENABLE ROW LEVEL SECURITY;

-- Create RLS policies
-- Users can view their own proposals
CREATE POLICY "Users can view their own edit proposals"
ON playground_edit_proposals FOR SELECT
USING (auth.uid() = user_id);

-- Users can insert their own proposals
CREATE POLICY "Users can insert their own edit proposals"
ON playground_edit_proposals FOR INSERT
WITH CHECK (auth.uid() = user_id);

-- Create trigger to update updated_at
CREATE TRIGGER update_playground_edit_proposals_updated_at
BEFORE UPDATE ON playground_edit_proposals
FOR EACH ROW
EXECUTE FUNCTION update_updated_at_column();
