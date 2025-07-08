SELECT MONTH(start_date) MONTH,
       CAR_ID CAR_ID,
       COUNT(CAR_ID) RECORDS
FROM car_rental_company_rental_history
WHERE start_date BETWEEN '2022-08-01' AND '2022-10-31'
    AND CAR_ID in (
        SELECT CAR_ID
        FROM car_rental_company_rental_history
        WHERE start_date BETWEEN '2022-08-01' AND '2022-10-31'
        GROUP BY CAR_ID
        HAVING COUNT(*) >= 5
    )
GROUP BY CAR_ID, MONTH(start_date)
ORDER BY MONTH, CAR_ID DESC;



