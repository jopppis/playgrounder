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

-- Insert sample visits
INSERT INTO visits (playground_id, user_id, visited_at, notes)
SELECT
    p.id,
    '00000000-0000-0000-0000-000000000001'::uuid,
    NOW() - interval '2 days',
    'Great playground with lots of equipment! Kids loved it.'
FROM playgrounds p
WHERE p.name = 'Central Park Playground';

INSERT INTO visits (playground_id, user_id, visited_at, notes)
SELECT
    p.id,
    '00000000-0000-0000-0000-000000000002'::uuid,
    NOW() - interval '1 day',
    'Nice views and clean facilities. Perfect for a sunny day.'
FROM playgrounds p
WHERE p.name = 'Battery Park Playground';

INSERT INTO visits (playground_id, user_id, visited_at, notes)
SELECT
    p.id,
    '00000000-0000-0000-0000-000000000003'::uuid,
    NOW() - interval '3 days',
    'Private visit notes'
FROM playgrounds p
WHERE p.name = 'Riverside Park';

-- Insert sample ratings
INSERT INTO ratings (playground_id, user_id, rating, is_public)
SELECT
    p.id,
    '00000000-0000-0000-0000-000000000001'::uuid,
    5,
    true
FROM playgrounds p
WHERE p.name = 'Central Park Playground';

INSERT INTO ratings (playground_id, user_id, rating, is_public)
SELECT
    p.id,
    '00000000-0000-0000-0000-000000000002'::uuid,
    4,
    true
FROM playgrounds p
WHERE p.name = 'Battery Park Playground';

INSERT INTO ratings (playground_id, user_id, rating, is_public)
SELECT
    p.id,
    '00000000-0000-0000-0000-000000000003'::uuid,
    3,
    false
FROM playgrounds p
WHERE p.name = 'Riverside Park';

-- Test the nearby function
SELECT name, ST_AsText(location) as location, description
FROM playgrounds_nearby(40.785091, -73.968285, 2000);

-- Test the ratings functions
SELECT *
FROM get_playground_ratings(
    (SELECT id FROM playgrounds WHERE name = 'Central Park Playground'),
    '00000000-0000-0000-0000-000000000001'::uuid
);

SELECT *
FROM get_public_ratings(
    (SELECT id FROM playgrounds WHERE name = 'Central Park Playground')
);
