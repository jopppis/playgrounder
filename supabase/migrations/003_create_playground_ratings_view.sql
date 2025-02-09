-- Create a view for playground ratings that includes both average and count
CREATE OR REPLACE VIEW playground_ratings AS
SELECT
    playground_id,
    ROUND(AVG(CASE WHEN is_public THEN rating END)::numeric, 1) as avg_rating,
    COUNT(CASE WHEN is_public THEN 1 END) as total_ratings
FROM ratings
GROUP BY playground_id;
