-- Make name column nullable in playgrounds table
ALTER TABLE playgrounds ALTER COLUMN name DROP NOT NULL;
