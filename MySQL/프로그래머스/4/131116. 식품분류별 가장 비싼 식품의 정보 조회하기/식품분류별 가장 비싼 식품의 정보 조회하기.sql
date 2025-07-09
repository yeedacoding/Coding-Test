SELECT fp1.CATEGORY,
       fp2.MAX_PRICE,
       fp1.PRODUCT_NAME
FROM food_product fp1
    JOIN (
        SELECT category,
               MAX(price) MAX_PRICE
        FROM food_product
        GROUP BY category
        HAVING category in ('과자', '국', '김치', '식용유')
    ) fp2
    ON fp1.category = fp2.category
    AND fp1.price = fp2.MAX_PRICE
ORDER BY fp2.MAX_PRICE DESC;