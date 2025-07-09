SELECT category,
       SUM(sales) TOTAL_SALES
FROM book_sales bs
    JOIN book b ON bs.book_id = b.book_id
WHERE bs.sales_date LIKE '2022-01%' 
GROUP BY category
ORDER BY category;