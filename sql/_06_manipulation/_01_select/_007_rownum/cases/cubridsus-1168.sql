create table foo(j int);
insert into foo values(3);
insert into foo values(4);
WITH cte as (
select j from foo order by j for orderby_num()=1)
SELECT * FROM cte;
WITH cte as (
select * from (select j from foo order by j for orderby_num()=1) a where j <>3)
SELECT * FROM cte;
drop table foo;
