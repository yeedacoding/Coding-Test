-- 코드를 입력하세요
SELECT book_id BOOK_ID, DATE_FORMAT(published_date, '%Y-%m-%d') PUBLISHED_DATE
FROM BOOK
WHERE published_date LIKE '2021%'
AND category = '인문'
ORDER BY published_date;