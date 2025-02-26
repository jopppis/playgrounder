-- Add city column to playgrounds table
ALTER TABLE playgrounds ADD COLUMN city TEXT;

-- Create an index on city for faster filtering
CREATE INDEX idx_playgrounds_city ON playgrounds(city);
