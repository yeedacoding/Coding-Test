SELECT COUNT(id) FISH_COUNT,
       MONTH(TIME) MONTH
FROM fish_info
GROUP BY MONTH(TIME)
ORDER BY MONTH