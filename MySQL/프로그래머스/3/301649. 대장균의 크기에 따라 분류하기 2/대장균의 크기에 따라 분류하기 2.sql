-- 코드를 작성해주세요
### 1. 윈도우함수 : RANK()
# select result.ID,
#     case
#         when result.RANKING / result.TOTAL_COUNT <= 0.25 then 'CRITICAL'
#         when result.RANKING / result.TOTAL_COUNT <= 0.5 then 'HIGH'
#         when result.RANKING / result.TOTAL_COUNT <= 0.75 then 'MEDIUM'
#         else 'LOW'
#     end as COLONY_NAME
# from
#     (select *,
#            rank() over(order by SIZE_OF_COLONY desc) as RANKING,
#            count(*) over() as TOTAL_COUNT
#     from ECOLI_DATA)
#     as result
# order by result.ID;

### 2. 윈도우함수 : NTILE()
select result.ID,
    case
        when result.RANKING = 1 then 'CRITICAL'
        when result.RANKING = 2 then 'HIGH'
        when result.RANKING = 3 then 'MEDIUM'
        else 'LOW'
    end as COLONY_NAME
from
    (select *,
            ntile(4) over(order by SIZE_OF_COLONY desc) as RANKING
    from ECOLI_DATA)
    as result
order by result.ID;
