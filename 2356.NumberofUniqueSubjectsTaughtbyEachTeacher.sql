--2356. Number of Unique Subjects Taught by Each Teacher

select distinct teacher_id, count(distinct subject_id) as cnt from teacher
group by teacher_id;