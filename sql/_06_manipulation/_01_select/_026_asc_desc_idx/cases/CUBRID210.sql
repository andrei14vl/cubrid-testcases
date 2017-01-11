set  system parameters 'dont_reuse_heap_file=yes';
create class xoo ( a int, b int);
create index idx1 on xoo(a asc, b desc);
create index idx2 on xoo(a desc, b desc);
create reverse index idx3 on xoo(a,b);
insert into xoo values(1,100);
insert into xoo values(50, 200);
insert into xoo values(30, 300);
insert into xoo values(100, 0);
insert into xoo values(1, 200);
insert into xoo values(1, 300);
insert into xoo values(1, 0);
update statistics on xoo;
WITH cte as (
select  a,b from xoo 
where a = 1 and b > 0 order by b desc for orderby_num() between 1 and 10)
SELECT * FROM cte;
WITH cte as (
select  a,b from xoo 
where a = 1 and b > 0 order by b desc)
SELECT * FROM cte;
WITH cte as (
select  a,b from xoo 
where a = 1 and b > 0 order by a asc, b desc  for orderby_num() between 1 and 10)
SELECT * FROM cte;
WITH cte as (
select  a,b from xoo 
where a = 1 and b > 0 order by a asc, b desc)
SELECT * FROM cte;
WITH cte as (
select  a,b from xoo 
where a > 1 and b > 0 order by a asc, b desc  for orderby_num() between 1 and 10)
SELECT * FROM cte;
WITH cte as (
select  a,b from xoo 
where a > 1 and b > 0 order by a asc, b desc)
SELECT * FROM cte;
WITH cte as (
select  a,b from xoo 
where a > 1  order by a asc, b desc  for orderby_num() between 2 and 3)
SELECT * FROM cte;
WITH cte as (
select  a,b from xoo 
where a > 1  order by a asc, b desc)
SELECT * FROM cte;
drop xoo;
set  system parameters 'dont_reuse_heap_file=no';
commit;
