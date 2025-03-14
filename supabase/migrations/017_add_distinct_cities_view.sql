-- Drop existing view if exists
DROP VIEW IF EXISTS v_distinct_cities;

-- Create view for distinct cities from active playgrounds with SECURITY INVOKER
CREATE VIEW v_distinct_cities
WITH (security_invoker=true)
AS
SELECT DISTINCT city
FROM v_active_playgrounds
WHERE city IS NOT NULL
ORDER BY city;

-- Revoke all permissions from v_distinct_cities
REVOKE ALL ON v_distinct_cities FROM PUBLIC;
REVOKE ALL ON v_distinct_cities FROM authenticated;
REVOKE ALL ON v_distinct_cities FROM anon;

-- Grant permissions
GRANT SELECT ON v_distinct_cities TO authenticated;
GRANT SELECT ON v_distinct_cities TO anon;
