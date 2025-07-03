# SELECT ri.REST_ID,
#        ri.REST_NAME,
#        ri.FOOD_TYPE,
#        ri.FAVORITES,
#        ri.ADDRESS,
#        ROUND(AVG(rr.REVIEW_SCORE), 2) SCORE
# FROM rest_info ri
#     JOIN rest_review rr ON ri.rest_id = rr.rest_id
# WHERE ri.ADDRESS LIKE '%서울%'
# GROUP BY ri.REST_ID
# ORDER BY SCORE DESC, ri.FAVORITES DESC;

# SELECT ri.REST_ID,
#        ri.REST_NAME,
#        ri.FOOD_TYPE,
#        ri.FAVORITES,
#        ri.ADDRESS,
#        ROUND(AVG(rr.review_score), 2) SCORE
# FROM rest_info ri
#     INNER JOIN rest_review rr ON ri.rest_id = rr.rest_id
# WHERE address like '%서울%'
# GROUP BY ri.rest_id
# ORDER BY SCORE DESC, ri.FAVORITES DESC;

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