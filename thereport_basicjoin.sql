--thereport_basicjoin.sql

select case when grade>=8 then name
else "NULL" end as "name", grade, marks from(
select name, case when Marks >= 0 and Marks<= 9 then 1
                    when Marks >= 10 and Marks<= 19 then 2
                    when Marks >= 20 and Marks<= 29 then 3
                    when Marks >= 30 and Marks<= 39 then 4
                    when Marks >= 40 and Marks<= 49 then 5
                    when Marks >= 50 and Marks<= 59 then 6
                    when Marks >= 60 and Marks<= 69 then 7
                    when Marks >= 70 and Marks<= 79 then 8
                    when Marks >= 80 and Marks<= 89 then 9
                    when Marks >= 90 and Marks<= 100 then 10
end as 'grade', marks
from students ) as sub
order by grade desc,name,marks; 