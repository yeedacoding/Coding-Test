-- 코드를 입력하세요
select COUNT(USER_ID) USERS
from USER_INFO
where JOINED like "2021%"
  and AGE between 20 and 29;