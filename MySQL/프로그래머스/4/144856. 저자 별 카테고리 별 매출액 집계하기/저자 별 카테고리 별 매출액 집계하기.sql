SELECT a1.AUTHOR_ID,
       a1.AUTHOR_NAME,
       CATEGORY,
       TOTAL_SALES
FROM author a1
    JOIN (
        SELECT b.author_id,
               b.category,
               SUM(bs.sales * b.price) TOTAL_SALES
        FROM book_sales bs
            JOIN book b ON bs.book_id = b.book_id
            JOIN author a2 ON b.author_id = a2.author_id
        WHERE sales_date LIKE '2022-01%'
        GROUP BY b.author_id, b.category
    ) sales_info
    ON a1.author_id = sales_info.author_id
ORDER BY a1.AUTHOR_ID, CATEGORY DESC;