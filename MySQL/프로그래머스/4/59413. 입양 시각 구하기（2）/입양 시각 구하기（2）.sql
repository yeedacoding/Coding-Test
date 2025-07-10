WITH RECURSIVE cte AS (
    SELECT 0 AS hour
    UNION ALL
    SELECT hour + 1 FROM cte WHERE hour < 23
)

SELECT cte.hour HOUR,
       COUNT(ao.animal_id) COUNT
FROM cte
    LEFT JOIN animal_outs ao ON cte.hour = HOUR(ao.datetime)
GROUP BY HOUR
ORDER BY HOUR