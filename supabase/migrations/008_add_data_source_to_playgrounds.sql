-- Create enum type for data sources
CREATE TYPE playground_data_source_type AS ENUM ('municipality', 'osm');

-- Add data_source column
ALTER TABLE playgrounds
ADD COLUMN data_source playground_data_source_type;
