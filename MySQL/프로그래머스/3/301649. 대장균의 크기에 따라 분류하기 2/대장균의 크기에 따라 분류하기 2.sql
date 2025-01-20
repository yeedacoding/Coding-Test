-- 코드를 작성해주세요
select 
    result.ID,  # result 테이블에서 RANKING 기준 4분위로 구분
    case
        when result.RANKING / result.TOTAL_COUNT * 100 <= 25 THEN 'CRITICAL'
        when result.RANKING / result.TOTAL_COUNT * 100 <= 50 THEN 'HIGH'
        when result.RANKING / result.TOTAL_COUNT * 100 <= 75 THEN 'MEDIUM'
        else 'LOW'
    end as COLONY_NAME
from
    (select 
        *,   # SIZE_OF_COLONY 기준 내림차순한 결과의 랭크와 총 데이터 개수 => result 테이블
        rank() over(order by SIZE_OF_COLONY desc) as RANKING,
        count(*) over() as TOTAL_COUNT
    from ECOLI_DATA) as result
order by result.ID