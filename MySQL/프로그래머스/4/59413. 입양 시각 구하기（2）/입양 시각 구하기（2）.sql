WITH RECURSIVE cte AS (
    SELECT 0 AS HOUR
    UNION ALL
    SELECT HOUR + 1 FROM cte WHERE HOUR < 23
)

SELECT
    CASE
        WHEN HOUR(ao.datetime) IS NULL THEN cte.HOUR
        ELSE HOUR(ao.datetime)
    END HOUR,
    COUNT(animal_id) COUNT
FROM animal_outs ao
    RIGHT JOIN cte ON HOUR(ao.datetime) = cte.HOUR
GROUP BY HOUR
ORDER BY HOUR