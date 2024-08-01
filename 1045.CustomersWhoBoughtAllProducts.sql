--1045. Customers Who Bought All Products

select c.customer_id 
from customer c 
having count(distinct c.product_key) = (select count(*) from product)
group by c.customer_id;