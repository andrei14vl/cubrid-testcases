create class xoo ( a int, b char(10) );
insert into xoo values(1, '1');
insert into xoo values(null, '3');
WITH cte as (
select * from xoo where a = 1 and b = '1')
SELECT * FROM cte;
WITH cte as (
select * from xoo where a = 1 or b = '1')
SELECT * FROM cte;
drop table xoo;
