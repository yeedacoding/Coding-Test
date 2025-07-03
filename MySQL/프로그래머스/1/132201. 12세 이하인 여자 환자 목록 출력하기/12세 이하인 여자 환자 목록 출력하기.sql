SELECT PT_NAME,
       PT_NO,
       GEND_CD,
       AGE,
       CASE 
           WHEN tlno IS NULL THEN 'NONE'
           ELSE tlno
       END TLNO
FROM patient
WHERE age <= 12 AND gend_cd = 'W'
ORDER BY age DESC, pt_name;

# select PT_NAME,
#        PT_NO,
#        GEND_CD,
#        AGE,
#        IFNULL(TLNO, 'NONE') TLNO
# from PATIENT
# where AGE <= 12
#   and GEND_CD = 'W'
# order by AGE desc, PT_NAME;