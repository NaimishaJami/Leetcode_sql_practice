--hrproblemmedium

select name ||'('||substr(occupation,1,1)||')'  from (select name, occupation from occupations group by name,occupation order by name);
select 'There are a total of ' || count(occupation) || ' ' || lower(occupation) ||'s.' from occupations group by occupation order by count(occupation), occupation;