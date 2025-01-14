-- 코드를 작성해주세요
SELECT a.ID, 
       a.GENOTYPE, 
       b.GENOTYPE PARENT_GENOTYPE
FROM ECOLI_DATA a           # a = child
    LEFT JOIN ECOLI_DATA b  # b = parent
    ON a.PARENT_ID = b.ID
WHERE a.GENOTYPE & b.GENOTYPE = b.GENOTYPE
ORDER BY a.ID;