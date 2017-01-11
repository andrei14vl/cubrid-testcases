create class t1 ( c1 char(1), c2 integer);
insert into t1 values('a', 1);
insert into t1 values('b', 2);
insert into t1 values('c', 3);
insert into t1 values('d', 4);
insert into t1 values('a', 1);
insert into t1 values('a', 1);
insert into t1 values('a', 1);
insert into t1 values('a', 1);
insert into t1 values('b', 2);
insert into t1 values('c', 3);
insert into t1 values('d', 4);
WITH cte as (
select distinct c1, c2 from t1)
SELECT * FROM cte;
drop class t1;
