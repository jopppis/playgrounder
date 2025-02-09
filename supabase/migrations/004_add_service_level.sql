-- Add service_level column to playgrounds table
ALTER TABLE playgrounds ADD COLUMN IF NOT EXISTS service_level INTEGER DEFAULT 2;

-- Update existing playgrounds based on name
UPDATE playgrounds
SET service_level = CASE
    WHEN name LIKE '%Leikkipuisto%' THEN 1
    ELSE 2
END;
