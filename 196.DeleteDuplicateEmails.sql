--196. Delete Duplicate Emails

delete from person s where s.id not in (select min(p.id) from person p group by email);