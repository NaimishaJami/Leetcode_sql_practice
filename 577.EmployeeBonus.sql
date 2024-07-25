--577. Employee Bonus

select e.name, b.bonus from employee e left join bonus b on e.empid = b.empid where (nvl(b.bonus,0) < 1000 or b.bonus is null); 