--620. Not Boring Movies

select * from Cinema c where mod(id,2) = 1 and description not in ('boring')
order by rating desc;