-- Enable PostGIS (includes raster)
CREATE EXTENSION IF NOT EXISTS postgis;

-- Create playgrounds table with geometry
CREATE TABLE playgrounds (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    name VARCHAR NOT NULL,
    location GEOMETRY(Point, 4326) NOT NULL, -- SRID 4326 is for WGS84 (standard GPS coordinates)
    description TEXT,
    address TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT TIMEZONE('utc'::text, NOW()) NOT NULL
);

-- Create visits table
CREATE TABLE visits (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    playground_id UUID REFERENCES playgrounds(id) ON DELETE CASCADE,
    user_id UUID REFERENCES auth.users(id) ON DELETE CASCADE,
    visited_at TIMESTAMP WITH TIME ZONE DEFAULT TIMEZONE('utc'::text, NOW()) NOT NULL,
    notes TEXT,
    rating INTEGER CHECK (rating >= 1 AND rating <= 5),
    UNIQUE(playground_id, user_id)
);

-- Create spatial index for better geospatial query performance
CREATE INDEX idx_playgrounds_location ON playgrounds USING GIST(location);
CREATE INDEX idx_visits_user ON visits(user_id);
CREATE INDEX idx_visits_playground ON visits(playground_id);

-- Enable Row Level Security (RLS)
ALTER TABLE playgrounds ENABLE ROW LEVEL SECURITY;
ALTER TABLE visits ENABLE ROW LEVEL SECURITY;

-- Create policies
CREATE POLICY "Playgrounds are viewable by everyone"
    ON playgrounds FOR SELECT
    USING (true);

CREATE POLICY "Visits are viewable by the user who created them"
    ON visits FOR SELECT
    USING (auth.uid() = user_id);

CREATE POLICY "Users can insert their own visits"
    ON visits FOR INSERT
    WITH CHECK (auth.uid() = user_id);

-- Create convenience functions for working with coordinates
CREATE OR REPLACE FUNCTION playgrounds_nearby(
    lat double precision,
    lng double precision,
    radius_meters double precision DEFAULT 1000
) RETURNS SETOF playgrounds AS $$
    SELECT *
    FROM playgrounds
    WHERE ST_DWithin(
        location,
        ST_SetSRID(ST_MakePoint(lng, lat), 4326)::geography,
        radius_meters
    );
$$ LANGUAGE sql STABLE;
