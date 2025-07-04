SELECT COUNT(id) FISH_COUNT
FROM fish_info fi
    LEFT JOIN fish_name_info fni ON fi.fish_type = fni.fish_type
WHERE fni.fish_name = 'BASS' 
    OR fni.fish_name = 'SNAPPER'