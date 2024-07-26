--1731. The Number of Employees Which Report to Each Employee

select e.employee_id, e.name, count(m.employee_id) as reports_count
,round(avg(m.age)) as average_age from employees e inner join employees m 
on e.employee_id = m.reports_to
group by e.employee_id, e.name
order by e.employee_id;