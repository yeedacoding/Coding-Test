-- 1. SUBQUERY
SELECT product_id,
       product_name,
       product_cd,
       category,
       price
FROM food_product
WHERE price = (SELECT MAX(price) FROM food_product)


-- 2. ORDER BY & LIMIT
# SELECT product_id,
#        product_name,
#        product_cd,
#        category,
#        price
# FROM food_product
# ORDER BY price DESC
# LIMIT 1;