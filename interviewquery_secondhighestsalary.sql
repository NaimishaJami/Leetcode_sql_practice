--interviewquery_secondhighestsalary.sql

select max(e.salary) from employees e join departments d on e.department_id = d.id
where d.name = "engineering"
and salary < (select max(e2.salary) from employees e2 join departments d2 on e2.department_id = d2.id
where d2.name = "engineering");