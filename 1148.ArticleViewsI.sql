--1148. Article Views I

select distinct v.author_id as id from Views v where v.author_id = v.viewer_id order by v.author_id asc;