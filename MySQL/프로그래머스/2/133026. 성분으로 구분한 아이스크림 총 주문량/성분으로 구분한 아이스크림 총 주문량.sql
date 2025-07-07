SELECT INGREDIENT_TYPE,
       SUM(total_order) TOTAL_ORDER
FROM first_half fh
    JOIN icecream_info ii ON fh.flavor = ii.flavor
GROUP BY INGREDIENT_TYPE
ORDER BY TOTAL_ORDER