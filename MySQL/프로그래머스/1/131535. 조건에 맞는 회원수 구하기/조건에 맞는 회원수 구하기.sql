SELECT COUNT(user_id) USERS
FROM user_info
WHERE joined LIKE '2021%'
    AND age BETWEEN 20 AND 29;