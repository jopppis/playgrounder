-- Enable PostGIS (includes raster)
CREATE EXTENSION IF NOT EXISTS postgis SCHEMA extensions;

-- Create playgrounds table with geometry
CREATE TABLE playgrounds (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    name VARCHAR NOT NULL,
    location GEOMETRY(Point, 4326) NOT NULL, -- SRID 4326 is for WGS84 (standard GPS coordinates)
    description TEXT,
    address TEXT,
    has_supervised_activities BOOLEAN NOT NULL DEFAULT false,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT TIMEZONE('utc'::text, NOW()) NOT NULL
);

-- Create visits table
CREATE TABLE visits (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    playground_id UUID REFERENCES playgrounds(id) ON DELETE CASCADE,
    user_id UUID REFERENCES auth.users(id) ON DELETE CASCADE,
    visited_at TIMESTAMP WITH TIME ZONE DEFAULT TIMEZONE('utc'::text, NOW()) NOT NULL,
    notes TEXT,
    UNIQUE(playground_id, user_id)
);

-- Create ratings table
CREATE TABLE ratings (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    playground_id UUID REFERENCES playgrounds(id) ON DELETE CASCADE,
    user_id UUID REFERENCES auth.users(id) ON DELETE CASCADE,
    visit_id UUID REFERENCES visits(id) ON DELETE CASCADE,
    rating INTEGER CHECK (rating >= 1 AND rating <= 5),
    is_public BOOLEAN DEFAULT false,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT TIMEZONE('utc'::text, NOW()) NOT NULL,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT TIMEZONE('utc'::text, NOW()) NOT NULL,
    UNIQUE(visit_id)
);

-- Create spatial index for better geospatial query performance
CREATE INDEX idx_playgrounds_location ON playgrounds USING GIST(location);
CREATE INDEX idx_visits_user ON visits(user_id);
CREATE INDEX idx_visits_playground ON visits(playground_id);
CREATE INDEX idx_ratings_user ON ratings(user_id);
CREATE INDEX idx_ratings_playground ON ratings(playground_id);
CREATE INDEX idx_ratings_public ON ratings(is_public);

-- Enable Row Level Security (RLS)
ALTER TABLE playgrounds ENABLE ROW LEVEL SECURITY;
ALTER TABLE visits ENABLE ROW LEVEL SECURITY;
ALTER TABLE ratings ENABLE ROW LEVEL SECURITY;

-- Create policies
CREATE POLICY "Playgrounds are viewable by everyone"
    ON playgrounds FOR SELECT
    USING (true);

-- Policies for visits
CREATE POLICY "Users can view their own visits"
    ON visits FOR SELECT
    USING (auth.uid() = user_id);

CREATE POLICY "Users can insert their own visits"
    ON visits FOR INSERT
    WITH CHECK (auth.uid() = user_id);

CREATE POLICY "Users can update their own visits"
    ON visits FOR UPDATE
    USING (auth.uid() = user_id)
    WITH CHECK (auth.uid() = user_id);

CREATE POLICY "Users can delete their own visits"
    ON visits FOR DELETE
    USING (auth.uid() = user_id);

-- Policies for ratings
CREATE POLICY "Users can view their own ratings"
    ON ratings FOR SELECT
    USING (auth.uid() = user_id OR is_public = true);

CREATE POLICY "Users can insert their own ratings"
    ON ratings FOR INSERT
    WITH CHECK (auth.uid() = user_id);

CREATE POLICY "Users can update their own ratings"
    ON ratings FOR UPDATE
    USING (auth.uid() = user_id)
    WITH CHECK (auth.uid() = user_id);

CREATE POLICY "Users can delete their own ratings"
    ON ratings FOR DELETE
    USING (auth.uid() = user_id);

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

-- Add trigger to update ratings.updated_at
CREATE OR REPLACE FUNCTION update_updated_at_column()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = TIMEZONE('utc'::text, NOW());
    RETURN NEW;
END;
$$ language 'plpgsql';

CREATE TRIGGER update_ratings_updated_at
    BEFORE UPDATE ON ratings
    FOR EACH ROW
    EXECUTE FUNCTION update_updated_at_column();

-- Create a view for playground ratings that includes both average and count
CREATE OR REPLACE VIEW playground_ratings WITH (security_invoker = on) AS
SELECT
    p.id as playground_id,
    ROUND(AVG(CASE WHEN r.is_public THEN r.rating END)::numeric, 1) as avg_rating,
    COUNT(CASE WHEN r.is_public THEN 1 END) as total_ratings
FROM playgrounds p
LEFT JOIN ratings r ON p.id = r.playground_id
GROUP BY p.id;
