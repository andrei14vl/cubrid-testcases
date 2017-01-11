create class func_11 ( a int );
insert into func_11 values (1);
insert into func_11 values (2);
insert into func_11 values (2);
insert into func_11 values (3);
insert into func_11 values (3);
insert into func_11 values (3);
insert into func_11 values (4);
insert into func_11 values (4);
insert into func_11 values (4);
insert into func_11 values (4);
insert into func_11 values (5);
insert into func_11 values (5);
insert into func_11 values (5);
insert into func_11 values (5);
insert into func_11 values (5);
WITH cte as (
select orderby_num(), a  from func_11 order by a)
SELECT * FROM cte;
WITH cte as (
select orderby_num(), a  from func_11 order by a for orderby_num() <= 5)
SELECT * FROM cte;
WITH cte as (
select ORDERBY_NUM(), a  from func_11 order by a for ORDERBY_num() = 3)
SELECT * FROM cte;
WITH cte as (
select groupby_num(), a, count(*) from func_11 group by a order by 1)
SELECT * FROM cte;
WITH cte as (
select groupby_num(), a, count(*) from func_11 group by a having groupby_num() = 3 order by 1)
SELECT * FROM cte;
WITH cte as (
select groupby_num(), orderby_num(), a, count(*) from func_11 group by a order by a)
SELECT * FROM cte;
WITH cte as (
select groupby_num(), orderby_num(), a, count(*) from func_11 group by a order by a for orderby_num() = 3)
SELECT * FROM cte;
WITH cte as (
select groupby_num(), orderby_num(), a, count(*) from func_11 group by a having groupby_num() = 3 order by a for orderby_num() = 1)
SELECT * FROM cte;
WITH cte as (
select GROUPBY_NUM(), orderby_num(), a, count(*) from func_11 group by a having groupby_num() = 3 order by a for orderby_num() = 1)
SELECT * FROM cte;
WITH cte as (
select GROUPBY_NUM(), orderby_num(), a, count(*) from func_11 group by a having groupby_num() = 3 order by a for orderby_num() = 0)
SELECT * FROM cte;
WITH cte as (
select GROUPBY_NUM(), orderby_num(), a, count(*) from func_11 group by a having groupby_num() = 0 order by a for orderby_num() = 0)
SELECT * FROM cte;
WITH cte as (
select orderby_num(), a from func_11 order by a for orderby_num() = 1 or orderby_num() = 2 or orderby_num() = 3 or orderby_num() = 4 or orderby_num() = 5)
SELECT * FROM cte;
WITH cte as (
select orderby_num(), a from func_11 order by a for (orderby_num() >=1 and orderby_num() <= 2) or (orderby_num() >=3 and orderby_num() <= 4 ) or (orderby_num() >=5 and orderby_num() <= 6 ) or (orderby_num() >=7 and orderby_num() <= 8 ) or (orderby_num() >=9 and orderby_num() <= 10 ))
SELECT * FROM cte;
drop class func_11;
