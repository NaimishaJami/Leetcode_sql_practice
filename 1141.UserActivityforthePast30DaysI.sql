--1141. User Activity for the Past 30 Days I

select      to_char(activity_date, 'yyyy-mm-dd') as day,
            count(distinct user_id) as active_users
from        activity
where       activity_date between to_date('2019-06-28', 'yyyy-mm-dd') 
                          and to_date('2019-07-27', 'yyyy-mm-dd')
group by    to_char(activity_date, 'yyyy-mm-dd');
