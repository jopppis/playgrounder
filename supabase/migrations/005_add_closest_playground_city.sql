-- Create function to find closest playground's city
CREATE OR REPLACE FUNCTION get_closest_playground_city(
    lat double precision,
    lng double precision
) RETURNS TEXT AS $$
    SELECT city
    FROM playgrounds
    WHERE city IS NOT NULL
    ORDER BY location::geography <-> ST_SetSRID(ST_MakePoint(lng, lat), 4326)::geography
    LIMIT 1;
$$ LANGUAGE sql STABLE;
