SELECT price_group * 10000 PRICE_GROUP,
       COUNT(p1.product_id) PRODUCTS
FROM product p1
    JOIN (
        SELECT product_id, FLOOR(price/10000) price_group
        FROM product
    ) p2
    ON p1.product_id = p2.product_id
GROUP BY price_group
ORDER BY PRICE_GROUP;