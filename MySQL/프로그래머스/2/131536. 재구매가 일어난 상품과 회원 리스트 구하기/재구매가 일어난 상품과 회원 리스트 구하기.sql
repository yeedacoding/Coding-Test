-- 코드를 입력하세요
SELECT USER_ID ui, PRODUCT_ID pi
FROM ONLINE_SALE
GROUP BY ui, pi
HAVING count(*) >= 2
ORDER BY ui, pi DESC