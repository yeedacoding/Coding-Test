-- 코드를 작성해주세요
SELECT COUNT(ID) FISH_COUNT
FROM fish_info fi
JOIN fish_name_info fni
ON fi.FISH_TYPE = fni.FISH_TYPE
WHERE fni.FISH_NAME IN ('BASS', 'SNAPPER')