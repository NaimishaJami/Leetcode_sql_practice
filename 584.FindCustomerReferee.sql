--584. Find Customer Referee

select c.name 
from customer c
where coalesce(c.referee_id,0) <> 2;