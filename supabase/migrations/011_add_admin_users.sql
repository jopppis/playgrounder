-- Create admin_users table
CREATE TABLE admin_users (
  user_id UUID PRIMARY KEY REFERENCES auth.users(id) ON DELETE CASCADE,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT TIMEZONE('utc'::text, NOW()) NOT NULL
);

-- Create indexes
CREATE INDEX idx_admin_users_user_id ON admin_users(user_id);

-- Enable RLS
ALTER TABLE admin_users ENABLE ROW LEVEL SECURITY;

-- Create RLS policies
-- Users can only view their own admin status
CREATE POLICY "Users can view their own admin status"
ON admin_users FOR SELECT
USING (user_id = auth.uid());

-- Only admins can insert/update/delete admin users
CREATE POLICY "Only admins can insert admin users"
ON admin_users FOR INSERT
WITH CHECK (
  EXISTS (
    SELECT 1 FROM admin_users WHERE user_id = auth.uid()
  )
);

CREATE POLICY "Only admins can update admin users"
ON admin_users FOR UPDATE
USING (
  EXISTS (
    SELECT 1 FROM admin_users WHERE user_id = auth.uid()
  )
);

CREATE POLICY "Only admins can delete admin users"
ON admin_users FOR DELETE
USING (
  EXISTS (
    SELECT 1 FROM admin_users WHERE user_id = auth.uid()
  )
);

-- Admins can view all proposals
CREATE POLICY "Admins can view all edit proposals"
ON playground_edit_proposals FOR SELECT
USING (
  EXISTS (
    SELECT 1 FROM admin_users WHERE user_id = auth.uid()
  )
);

-- Admins can update proposals
CREATE POLICY "Admins can update edit proposals"
ON playground_edit_proposals FOR UPDATE
USING (
  EXISTS (
    SELECT 1 FROM admin_users WHERE user_id = auth.uid()
  )
);

-- Admins can delete proposals
CREATE POLICY "Admins can delete edit proposals"
ON playground_edit_proposals FOR DELETE
USING (
  EXISTS (
    SELECT 1 FROM admin_users WHERE user_id = auth.uid()
  )
);
