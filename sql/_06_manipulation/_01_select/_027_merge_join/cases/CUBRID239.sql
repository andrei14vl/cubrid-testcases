create table foo ( a int, b int);
insert into foo values(0,0);
insert into foo values(1,1);
insert into foo values(2,2);
WITH cte as (
select  y.b 
from foo x, foo y where x.a > 0 and x.a = y.a and x.b =y.a)
SELECT * FROM cte;
WITH cte as (
select  y.b , z.b
from foo x, foo y, foo z where x.a > 0 and x.a = y.a and x.b =y.a and x.a = z.a and x.b = z.b)
SELECT * FROM cte;
drop foo;
