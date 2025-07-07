SELECT fi.id ID,
       fni.fish_name FISH_NAME,
       max_fish.max_len LENGTH
FROM fish_info fi
    JOIN (
        SELECT fish_type, MAX(length) max_len
        FROM fish_info
        GROUP BY fish_type
    ) max_fish
    ON fi.fish_type = max_fish.fish_type
    AND fi.length = max_fish.max_len
    JOIN fish_name_info fni ON fi.fish_type = fni.fish_type
ORDER BY ID;