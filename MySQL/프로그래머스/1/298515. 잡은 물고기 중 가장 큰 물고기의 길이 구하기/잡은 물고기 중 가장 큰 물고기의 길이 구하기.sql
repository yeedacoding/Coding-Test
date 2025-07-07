SELECT CONCAT(length, 'cm') MAX_LENGTH
FROM fish_info
WHERE length = (SELECT MAX(length) FROM fish_info)