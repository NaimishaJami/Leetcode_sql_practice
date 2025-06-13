--interviewquery_duplicaterows.sql

select * from (select 
id, name, created_at, row_number () over (partition by id,name,created_at order by id) as rn
 from users) as u
 where rn > 1;