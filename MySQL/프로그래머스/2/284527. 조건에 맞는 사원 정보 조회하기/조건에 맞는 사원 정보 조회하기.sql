SELECT SCORE,
       he.EMP_NO EMP_NO,
       EMP_NAME,
       POSITION,
       EMAIL
FROM hr_employees he
    JOIN (
        SELECT EMP_NO,
               SUM(score) SCORE
        FROM hr_grade
        GROUP BY EMP_NO
    ) hr_score
    ON he.emp_no = hr_score.emp_no
ORDER BY SCORE DESC
LIMIT 1;