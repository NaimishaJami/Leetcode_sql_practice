--550. Game Play Analysis IV

select 
    round(count(a2.player_id) / count(a1.player_id), 2) as fraction 
from 
    activity a1 
left join 
    activity a2 
    on a2.player_id = a1.player_id and a2.event_date = a1.event_date + 1 
where 
    (a1.player_id, a1.event_date) in (
        select player_id, min(event_date) 
        from activity 
        group by player_id
    );