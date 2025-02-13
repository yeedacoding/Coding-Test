-- 코드를 입력하세요
select RI.REST_ID,
       RI.REST_NAME,
       RI.FOOD_TYPE,
       RI.FAVORITES,
       RI.ADDRESS,
       ROUND(AVG(RR.REVIEW_SCORE), 2) SCORE
from REST_INFO RI
inner join REST_REVIEW RR on RR.REST_ID = RI.REST_ID
where RI.ADDRESS like "서울%"
group by RI.REST_ID
order by SCORE desc, RI.FAVORITES desc;