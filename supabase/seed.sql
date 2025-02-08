-- Insert sample playgrounds
INSERT INTO playgrounds (name, location, description, address)
VALUES
    ('Central Park Playground',
     ST_SetSRID(ST_MakePoint(-73.968285, 40.785091), 4326),
     'Large playground with swings and climbing frames',
     'Central Park, New York, NY'),

    ('Riverside Park',
     ST_SetSRID(ST_MakePoint(-73.976089, 40.801505), 4326),
     'Waterfront playground with modern equipment',
     'Riverside Drive, New York, NY'),

    ('Washington Square Park',
     ST_SetSRID(ST_MakePoint(-73.997456, 40.730823), 4326),
     'Historic playground in the heart of Greenwich Village',
     'Washington Square N, New York, NY'),

    ('Battery Park Playground',
     ST_SetSRID(ST_MakePoint(-74.015739, 40.703693), 4326),
     'Modern playground with harbor views',
     'Battery Park City, New York, NY');

-- Test the nearby function
SELECT name, ST_AsText(location) as location, description
FROM playgrounds_nearby(40.785091, -73.968285, 2000);
