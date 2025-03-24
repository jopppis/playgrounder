-- When an admin reverts an edit and then deletes their account,
-- we want to preserve the fact that the edit was reverted, just not who reverted it
ALTER TABLE edited_playgrounds
  DROP CONSTRAINT IF EXISTS edited_playgrounds_reverted_by_fkey,
  ADD CONSTRAINT edited_playgrounds_reverted_by_fkey
    FOREIGN KEY (reverted_by)
    REFERENCES auth.users(id)
    ON DELETE SET NULL;

-- When a user who proposed edits deletes their account,
-- we want to preserve their edit proposals and the resulting edits,
-- just not who made them. This maintains playground history while respecting privacy.
ALTER TABLE playground_edit_proposals
  DROP CONSTRAINT IF EXISTS playground_edit_proposals_user_id_fkey,
  ADD CONSTRAINT playground_edit_proposals_user_id_fkey
    FOREIGN KEY (user_id)
    REFERENCES auth.users(id)
    ON DELETE SET NULL;

-- Make user_id nullable in playground_edit_proposals to support SET NULL on delete
ALTER TABLE playground_edit_proposals
  ALTER COLUMN user_id DROP NOT NULL;
