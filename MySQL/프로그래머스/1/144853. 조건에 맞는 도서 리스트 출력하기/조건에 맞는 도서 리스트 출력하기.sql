SELECT BOOK_ID, 
       DATE_FORMAT(published_date, '%Y-%m-%d') PUBLISHED_DATE
FROM book
WHERE published_date LIKE '2021%'
    AND category = '인문'
ORDER BY published_date;