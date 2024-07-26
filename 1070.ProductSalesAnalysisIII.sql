1070. Product Sales Analysis III

select p.product_id, s.year as first_year, s.quantity, s.price 
from sales s inner join product p 
on s.product_id = p.product_id
where s.year = (select min (a.year) from sales a where a.product_id = s.product_id);