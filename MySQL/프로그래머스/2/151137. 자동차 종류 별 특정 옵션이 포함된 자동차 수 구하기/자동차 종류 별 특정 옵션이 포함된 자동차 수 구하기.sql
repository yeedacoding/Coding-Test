SELECT CAR_TYPE,
       COUNT(CAR_TYPE)
FROM car_rental_company_car crcc
WHERE options LIKE '%통풍시트%'
    OR options LIKE '%열선시트%'
    OR options LIKE '%가죽시트%'
GROUP BY CAR_TYPE
ORDER BY CAR_TYPE