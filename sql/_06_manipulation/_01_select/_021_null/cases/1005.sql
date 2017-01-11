create class t1(c1 int, c2 varchar(20));
insert into t1 values(101, 'aaa');
insert into t1 values(null, 'aaa');
insert into t1 values(null, 'aaa');
insert into t1 values(null, 'aaa');
WITH cte as (
select avg(c1) from t1)
SELECT * FROM cte;
drop class t1;
