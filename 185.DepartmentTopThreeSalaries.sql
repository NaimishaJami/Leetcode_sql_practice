--185. Department Top Three Salaries

select d.name as department,e.name as employee,e.salary from (select e.*,dense_rank() over(partition by e.departmentid 
order by salary desc) r from Employee e) e
inner join department d on e.departmentid=d.id where r <= 3;  