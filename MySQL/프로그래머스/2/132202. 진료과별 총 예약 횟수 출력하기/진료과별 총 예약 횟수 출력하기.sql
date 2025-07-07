SELECT mcdp_cd 진료과코드,
       COUNT(pt_no) 5월예약건수
FROM appointment
WHERE apnt_ymd LIKE '2022-05%'
GROUP BY mcdp_cd
ORDER BY 5월예약건수, 진료과코드 