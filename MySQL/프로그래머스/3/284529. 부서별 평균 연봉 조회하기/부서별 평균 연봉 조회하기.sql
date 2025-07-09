SELECT hd.DEPT_ID,
       hd.DEPT_NAME_EN,
       ROUND(AVG(he.sal), 0) AVG_SAL
FROM hr_department hd
    JOIN hr_employees he ON hd.dept_id = he.dept_id
GROUP BY hd.dept_id
ORDER BY AVG_SAL DESC;