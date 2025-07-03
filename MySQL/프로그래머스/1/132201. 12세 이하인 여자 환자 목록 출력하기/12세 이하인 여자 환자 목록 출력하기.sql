SELECT PT_NAME,
       PT_NO,
       GEND_CD,
       AGE,
       CASE 
           WHEN tlno IS NULL THEN 'NONE'
           WHEN tlno IS NOT NULL THEN tlno
       END TLNO
FROM patient
WHERE age <= 12 AND gend_cd = 'W'
ORDER BY age DESC, pt_name;