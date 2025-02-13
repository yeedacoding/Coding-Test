-- 코드를 입력하세요
# select *
# from FOOD_PRODUCT
# order by PRICE desc
# limit 1;

select *
from FOOD_PRODUCT
where PRICE = (
      select MAX(PRICE)
      from FOOD_PRODUCT);