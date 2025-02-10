-- 코드를 입력하세요
select DATE_FORMAT(SALES_DATE, "%Y-%m-%d") SALES_DATE,
       PRODUCT_ID,
       USER_ID,
       SALES_AMOUNT
from ONLINE_SALE
where SALES_DATE like "2022-03%"
union all
select DATE_FORMAT(SALES_DATE, "%Y-%m-%d") SALES_DATE,
       PRODUCT_ID,
       NULL as USER_ID,
       SALES_AMOUNT
from OFFLINE_SALE
where SALES_DATE like "2022-03%"
order by SALES_DATE, PRODUCT_ID, USER_ID;