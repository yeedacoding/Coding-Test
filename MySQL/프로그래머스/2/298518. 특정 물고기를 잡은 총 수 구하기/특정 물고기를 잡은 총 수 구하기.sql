-- 코드를 작성해주세요
select count(*) FISH_COUNT
from FISH_INFO FI
left join FISH_NAME_INFO FNI on FI.FISH_TYPE = FNI.FISH_TYPE
where (FNI.FISH_NAME = 'BASS')
   or (FNI.FISH_NAME = 'SNAPPER');