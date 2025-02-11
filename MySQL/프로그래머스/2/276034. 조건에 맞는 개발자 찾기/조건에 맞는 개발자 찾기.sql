-- 코드를 작성해주세요
# bit 연산
select distinct(D.ID),
       D.EMAIL,
       D.FIRST_NAME,
       D.LAST_NAME
from DEVELOPERS D
join SKILLCODES SC on SC.CODE & D.SKILL_CODE
where SC.NAME = 'C#'
   or SC.NAME = 'Python'
order by D.ID;