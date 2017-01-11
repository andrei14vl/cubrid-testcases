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
select groupby_num(), orderby_num(), a, count(*) from func_11 group by a order by a)
SELECT * FROM cte;
WITH cte as (
select groupby_num(), orderby_num(), a, count(*) from func_11 group by a order by a for orderby_num() =3)
SELECT * FROM cte;
drop func_11;
