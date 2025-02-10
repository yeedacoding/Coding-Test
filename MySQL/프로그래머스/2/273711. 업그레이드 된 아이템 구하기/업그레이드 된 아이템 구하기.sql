-- 코드를 작성해주세요
select II.ITEM_ID,
       II.ITEM_NAME,
       II.RARITY
from ITEM_INFO II
join ITEM_TREE IT on II.ITEM_ID = IT.ITEM_ID
where IT.PARENT_ITEM_ID in (
      select ITEM_ID
      FROM ITEM_INFO
      where RARITY = 'RARE')
order by II.ITEM_ID desc;