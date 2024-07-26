--596. Classes More Than 5 Students

select c1.class from courses c1 
having count(c1.class) >= 5 
group by c1.class; 