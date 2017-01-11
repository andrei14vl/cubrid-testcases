create class t1(c1 int, c2 varchar(20));
insert into t1 values(101, 'aaa');
insert into t1 values(null, 'aaa');
insert into t1 values(null, 'aaa');
insert into t1 values(null, 'aaa');
WITH cte as (
select max(c1) from t1)
SELECT * FROM cte;
WITH cte as (
select min(c1) from t1)
SELECT * FROM cte;
drop class t1;
