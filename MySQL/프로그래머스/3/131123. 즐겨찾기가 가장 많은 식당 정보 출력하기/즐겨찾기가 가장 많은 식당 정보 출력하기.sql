SELECT ri1.FOOD_TYPE,
       ri1.REST_ID,
       ri1.REST_NAME,
       ri2.max_fav FAVORITES
FROM rest_info ri1
    JOIN (
        SELECT food_type, MAX(favorites) max_fav
        FROM rest_info
        GROUP BY food_type
    ) ri2
    ON ri1.food_type = ri2.food_type
    AND ri1.favorites = ri2.max_fav
ORDER BY ri1.food_type DESC;

# SELECT FOOD_TYPE, REST_ID, REST_NAME, FAVORITES
# FROM REST_INFO
# WHERE (FOOD_TYPE, FAVORITES) IN (SELECT FOOD_TYPE, MAX(FAVORITES)
#                               FROM REST_INFO
#                               GROUP BY FOOD_TYPE)
# ORDER BY FOOD_TYPE DESC ;