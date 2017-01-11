set system parameters 'compat_mode=cubrid';
create class xoo ( a int, b varchar(3), c int, d int);
insert into xoo values(5, '3', 1, 2);
insert into xoo values(4, '7', 2, 1);
insert into xoo values(6, '8', 5, 9);
insert into xoo values(1, '2', 7, 8);
insert into xoo values(7, '6', 6, 3);
insert into xoo values(3, '9', 3, 4);
insert into xoo values(8, '1', 9, 5);
insert into xoo values(2, '4', 4, 6);
insert into xoo values(9, '5', 8, 7);
insert into xoo values(10, '1', 5, 5);
insert into xoo values(10, '6', 3, 1);
insert into xoo values(10, '4', 9, 5);
insert into xoo values(10, '4', 6, 5);
insert into xoo values(10, '15', 3, 5);
insert into xoo values(10, '4', 5, 5);
insert into xoo values(10, '4', 2, 1);
insert into xoo values(10, '4', 1, 5);
insert into xoo values(10, '4', 9, 5);
create index  idx on xoo (a,b,c);
WITH cte as (
select   count(*), a,b,c from xoo
group by a,b,c 
order by a,b,c for orderby_num() < 15)
SELECT * FROM cte;
WITH cte as (
select   count(*), a,b,c from xoo
group by a,b,c 
order by a,b for orderby_num() < 15)
SELECT * FROM cte;
WITH cte as (
select   count(*), a,b,c from xoo
group by a,b,c 
order by a for orderby_num() < 15)
SELECT * FROM cte;
WITH cte as (
select   count(*), a from xoo
group by a 
order by a for orderby_num() < 7)
SELECT * FROM cte;
WITH cte as (
select   count(*), a,b,c from xoo
group by a,b,c
order by c for orderby_num() < 15)
SELECT * FROM cte;
WITH cte as (
select   count(*), a,b,c from xoo
group by a,b,c 
order by -a, b for orderby_num() < 15)
SELECT * FROM cte;
WITH cte as (
select   count(*), a,b,c from xoo
group by a,b,c 
order by c,b,a for orderby_num() < 15)
SELECT * FROM cte;
WITH cte as (
select   count(*), a,b,c from xoo
where a <> 10
group by a,b,c
order by a,b,c for orderby_num() < 15)
SELECT * FROM cte;
WITH cte as (
select   count(*), a,b,c from xoo
where a = 10 and b< '90'
group by a,b,c
order by a,b,c for orderby_num() < 15)
SELECT * FROM cte;
WITH cte as (
select   count(*), a,b,c from xoo
where a = 10 and b = '4' and c < 10
group by a,b,c
order by a,b,c for orderby_num() < 15)
SELECT * FROM cte;
WITH cte as (
select   count(*), a,b,c from xoo
where a < 10 and c = 4
group by a,b,c
order by a,b,c for orderby_num() < 15)
SELECT * FROM cte;
WITH cte as (
select   count(*), a,b,c from xoo
where b = '4'
group by a,b,c
order by b,c for orderby_num() < 15)
SELECT * FROM cte;
WITH cte as (
select   count(*), a,b,c from xoo
where b = '4' and c =9
group by a,b,c
order by a,c for orderby_num() < 15)
SELECT * FROM cte;
WITH cte as (
select   count(*), a from xoo
where a < 10
group by a
order by a for orderby_num() < 15)
SELECT * FROM cte;
WITH cte as (
select   x1.a, x2.a, x2.b, count(*)
from xoo x1, xoo x2
where x1.a = x2.a
group by x1.a, x2.a, x2.b
order by 1,2,3)
SELECT * FROM cte;
WITH cte as (
select   x1.a, x2.a, x2.b, count(*)
from xoo x1, xoo x2
where x1.a = x2.a
group by x1.a, x2.a, x2.b 
order by 1,2,3 for orderby_num() < 10)
SELECT * FROM cte;
WITH cte as (
select   x1.a, x2.a, x2.b, count(*)
from xoo x1, xoo x2
where x1.a = x2.a and x1.a < 12
group by x1.a, x2.a, x2.b
order by 1,2)
SELECT * FROM cte;
WITH cte as (
select   x1.a, x2.a, x2.b, count(*)
from xoo x1, xoo x2
where x1.a = x2.a and x1.a < 12 and x2.a < 12
group by x1.a, x2.a, x2.b
order by 1,2,3)
SELECT * FROM cte;
WITH cte as (
select   x1.a, x2.a, x2.b, count(*)
from xoo x1, xoo x2
where x1.a = x2.a and x1.a = 10 and x2.a < 12
group by x1.a, x2.a, x2.b
order by 1,2,3)
SELECT * FROM cte;
WITH cte as (
select   x1.a, x2.a, x2.b, count(*)
from xoo x1, xoo x2
where x1.a = x2.a and x1.a = 10 and x1.a = 10 and x1.a <= 12
group by x1.a, x2.a, x2.b
order by 1,2,3)
SELECT * FROM cte;
WITH cte as (
select   x1.a, x2.a, x2.b, count(*)
from xoo x1, xoo x2
where x1.a = x2.a and x1.a = 10 and x1.a = 10 and x1.c <= 12 and x2.a = 10
group by x1.a, x2.a, x2.b
order by 1,2,3)
SELECT * FROM cte;
WITH cte as (
select   count(*), a,b,c from xoo
where a = 10 and b = '4' and c < 10
group by a,b,c
order by a,b,4 for orderby_num() < 15)
SELECT * FROM cte;
WITH cte as (
select   count(*), a,b,c from xoo
group by a,b,c
order by a,b,4 for orderby_num() < 15)
SELECT * FROM cte;
WITH cte as (
select   count(*), a,b,c from xoo where a < 11
group by a,b,c
order by a,b,4 for orderby_num() < 15)
SELECT * FROM cte;
WITH cte as (
select   a,b, count(*) from xoo group by a,b)
SELECT * FROM cte;
WITH cte as (
select   a,b from xoo union select   a,b from xoo)
SELECT * FROM cte;
WITH cte as (
select   a,b from xoo difference select   a,b from xoo)
SELECT * FROM cte;
WITH cte as (
select   a,b from xoo intersection select   a,b from xoo)
SELECT * FROM cte;
drop xoo;
commit;
