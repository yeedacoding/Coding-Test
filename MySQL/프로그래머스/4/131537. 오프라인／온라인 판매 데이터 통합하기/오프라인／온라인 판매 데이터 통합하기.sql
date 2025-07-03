SELECT DATE_FORMAT(sales_date, '%Y-%m-%d') SALES_DATE,
       product_id,
       user_id,
       sales_amount
FROM online_sale
WHERE sales_date LIKE '2022-03%'
UNION ALL
SELECT DATE_FORMAT(sales_date, '%Y-%m-%d') SALES_DATE,
       product_id,
       NULL as user_id,
       sales_amount
FROM offline_sale
WHERE sales_date LIKE '2022-03%'
ORDER BY sales_date, product_id, user_id;