--176. Second Highest Salary

select max(e.salary) as SecondHighestSalary from (select e.*,dense_rank() over(order by salary desc ) r from employee e) e where r = 2; 
/*
select max(e2.salary) "SecondHighestSalary" 
from employee e2 
where e2.salary not in (select max(e.salary) 
from employee e);*/