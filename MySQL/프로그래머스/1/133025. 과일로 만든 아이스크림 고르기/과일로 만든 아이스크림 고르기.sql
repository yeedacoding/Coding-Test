-- 코드를 입력하세요
select FH.FLAVOR
from FIRST_HALF FH
inner join ICECREAM_INFO II on II.FLAVOR = FH.FLAVOR
where FH.TOTAL_ORDER > 3000 
    and II.INGREDIENT_TYPE = 'fruit_based'
order by FH.TOTAL_ORDER desc;