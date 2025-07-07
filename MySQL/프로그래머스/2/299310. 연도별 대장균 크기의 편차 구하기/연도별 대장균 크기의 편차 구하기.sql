SELECT YEAR,
       max_size - size_of_colony YEAR_DEV,
       ID
FROM ecoli_data e1
    JOIN (
        SELECT YEAR(differentiation_date) YEAR, 
               MAX(size_of_colony) max_size
        FROM ecoli_data
        GROUP BY YEAR(differentiation_date)
    ) year_max_size
    ON YEAR(e1.differentiation_date) = year_max_size.YEAR
ORDER BY YEAR, YEAR_DEV;