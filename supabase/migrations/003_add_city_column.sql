-- Add city column to playgrounds table
ALTER TABLE playgrounds ADD COLUMN city TEXT;

-- Create an index on city for faster filtering
CREATE INDEX idx_playgrounds_city ON playgrounds(city);

-- Update cities based on address patterns
UPDATE playgrounds
SET city = 'Helsinki'
WHERE address LIKE '%Helsinki%'
  AND city IS NULL;

UPDATE playgrounds
SET city = 'Espoo'
WHERE address LIKE '%Espoo%'
  AND city IS NULL;

UPDATE playgrounds
SET city = 'Vantaa'
WHERE address LIKE '%Vantaa%'
  AND city IS NULL;

UPDATE playgrounds
SET city = 'Kauniainen'
WHERE address LIKE '%Kauniainen%'
  AND city IS NULL;
