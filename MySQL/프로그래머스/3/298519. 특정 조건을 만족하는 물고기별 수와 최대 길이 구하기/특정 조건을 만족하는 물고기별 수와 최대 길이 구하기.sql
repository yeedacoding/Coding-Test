SELECT COUNT(*) FISH_COUNT,
       MAX(length) MAX_LENGTH,
       FISH_TYPE
FROM fish_info
GROUP BY fish_type
HAVING AVG(length) >= 33
ORDER BY FISH_TYPE;