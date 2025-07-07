SELECT COUNT(id) FISH_COUNT,
       fish_name FISH_NAME
FROM fish_info fi
    JOIN fish_name_info fni ON fi.fish_type = fni.fish_type
GROUP BY fish_name
ORDER BY FISH_COUNT DESC;