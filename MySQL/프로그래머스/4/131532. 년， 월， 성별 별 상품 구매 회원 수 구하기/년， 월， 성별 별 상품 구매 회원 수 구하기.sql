SELECT YEAR(os.sales_date) YEAR,
       MONTH(os.sales_date) MONTH,
       ui.GENDER,
       COUNT(DISTINCT os.user_id) USERS
FROM online_sale os
    JOIN user_info ui ON os.user_id = ui.user_id
WHERE ui.gender IS NOT NULL
GROUP BY YEAR, MONTH, GENDER
ORDER BY YEAR, MONTH, GENDER;