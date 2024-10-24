--1907. Count Salary Categories

select 'High Salary' as category, (select count(*) from Accounts where income > 50000) as accounts_count from accounts
union
select 'Average Salary' as category, (select count(*) from Accounts where income >= 20000 and income <= 50000) as accounts_count from accounts
union
select 'Low Salary' as category, (select count(*) from Accounts where income < 20000) as accounts_count from accounts;