--1075. Project Employees I

select p.project_id, coalesce(round(avg(e.experience_years),2),0) as average_years
from project p left outer join employee e 
on p.employee_id = e.employee_id
group by p.project_id; 