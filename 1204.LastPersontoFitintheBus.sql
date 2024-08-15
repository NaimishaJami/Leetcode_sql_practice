--1204. Last Person to Fit in the Bus

SELECT person_name from (
    SELECT person_name from 
       (SELECT person_name,turn, sum(weight) over (order by turn) AS TW FROM queue) K where TW<=1000 order by turn DESC) M WHERE ROWNUM=1;