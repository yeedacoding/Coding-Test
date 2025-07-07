-- 1. SUBQUERY 
SELECT price AS MAX_PRICE
FROM product
WHERE price = (SELECT MAX(price) FROM product)

-- 2. ORDER BY & LIMIT
# SELECT price AS MAX_PRICE
# FROM product
# ORDER BY price DESC
# LIMIT 1;