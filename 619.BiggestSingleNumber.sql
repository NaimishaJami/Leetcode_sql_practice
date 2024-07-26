--619. Biggest Single Number

select nullif(max(num),null) as num from 
(select num from mynumbers 
having count(num) <= 1
group by num);