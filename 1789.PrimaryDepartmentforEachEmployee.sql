--1789. Primary Department for Each Employee

select employee_id , department_id from employee where primary_flag = 'Y' or employee_id in (select employee_id from employee having count(employee_id)=1 group by employee_id );