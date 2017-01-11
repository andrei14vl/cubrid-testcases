create class tbl (a int, b int);
insert into tbl values (1, 1);
insert into tbl values (2, NULL);
create index i_tbl_a_b on tbl (a, b);
WITH cte as (
select  *
from tbl x left outer join tbl y on x.a = y.a
            left outer join tbl z on y.a = z.a
where x.b = nvl(y.b, z.b)
order by 1, 2)
SELECT * FROM cte;
WITH cte as (
select  *
from tbl x left outer join tbl y on x.a = y.a
            left outer join tbl z on y.a = z.a
where x.b = nvl(y.b, z.b) 
order by 1, 2)
SELECT * FROM cte;
WITH cte as (
select  *
from tbl x inner join tbl y on x.a = y.a
            left outer join tbl z on y.a = z.a
where x.b = nvl(y.b, z.b) 
order by 1, 2)
SELECT * FROM cte;
WITH cte as (
select  *
from tbl x inner join tbl y on x.a = y.a
            left outer join tbl z on y.a = z.a
            left outer join tbl xx on z.a = xx.a
where x.b = nvl(y.b, z.b)
and x.b = nvl(z.b, xx.b)
order by 1, 2)
SELECT * FROM cte;
WITH cte as (
select  *
from tbl x inner join tbl y on x.a = y.a
            left outer join tbl z on y.a = z.a
            left outer join tbl xx on z.a = xx.a
where y.b = nvl(z.b, xx.b)
order by 1, 2)
SELECT * FROM cte;
drop index i_tbl_a_b on tbl(a,b);
drop table tbl;
