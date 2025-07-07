SELECT ROUTE,
       CONCAT(ROUND(SUM(d_between_dist), 1), 'km') TOTAL_DISTANCE,
       CONCAT(ROUND(SUM(d_between_dist) / COUNT(no), 2), 'km') AVERAGE_DISTANCE
FROM subway_distance
GROUP BY ROUTE
ORDER BY ROUND(SUM(d_between_dist), 1) DESC;