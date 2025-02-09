-- Add delete policies for visits and ratings
CREATE POLICY "Users can delete their own visits"
    ON visits FOR DELETE
    USING (auth.uid() = user_id);

CREATE POLICY "Users can delete their own ratings"
    ON ratings FOR DELETE
    USING (auth.uid() = user_id);

-- Drop existing policies that might conflict
DROP POLICY IF EXISTS "Users can insert their own ratings" ON ratings;
DROP POLICY IF EXISTS "Users can update their own ratings" ON ratings;
DROP POLICY IF EXISTS "Enable upsert for users based on user_id" ON ratings;

-- Add comprehensive policies for ratings
CREATE POLICY "Users can insert their own ratings"
    ON ratings FOR INSERT
    WITH CHECK (auth.uid() = user_id);

CREATE POLICY "Users can update their own ratings"
    ON ratings FOR UPDATE
    USING (auth.uid() = user_id)
    WITH CHECK (auth.uid() = user_id);
