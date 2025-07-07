SELECT id ID,
       fni.fish_name FISH_NAME,
       max_fish_info.max_len LENGTH
FROM fish_name_info fni
    JOIN (
        SELECT fi.id,
               fi.fish_type,
               fi.length,
               max_fish.max_len
        FROM fish_info fi
            JOIN (
                SELECT fish_type, MAX(length) max_len
                FROM fish_info
                GROUP BY fish_type
            ) max_fish
            ON fi.fish_type = max_fish.fish_type
            AND fi.length = max_fish.max_len
    ) max_fish_info
    ON max_fish_info.fish_type = fni.fish_type
ORDER BY ID;
