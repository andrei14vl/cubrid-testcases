create class xoo ( id int);
insert into xoo values(1);
insert into xoo values(2);
insert into xoo values(3);
WITH cte as (
select id + 1 as x from xoo order by x)
SELECT * FROM cte;
WITH cte as (
select to_char(id) as x from xoo order by x)
SELECT * FROM cte;
WITH cte as (
select id x from xoo order by x)
SELECT * FROM cte;
WITH cte as (
select id + 1 as x from xoo order by x desc)
SELECT * FROM cte;
WITH cte as (
select to_char(id) as x from xoo order by x desc)
SELECT * FROM cte;
WITH cte as (
select id x from xoo order by x desc)
SELECT * FROM cte;
WITH cte as (
select (select b.id from xoo b where  b.id = a.id) as x from xoo a order by x desc)
SELECT * FROM cte;
drop xoo;
