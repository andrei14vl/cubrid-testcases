create class t1 (c1 int, c2 char(1));
insert into t1 values (1, 'x');
insert into t1 values (null, null);
insert into t1 values (2, 'x');
insert into t1 values (1, 'x');
insert into t1 values (null, 'y');
insert into t1 values (1, 'x');
insert into t1 values (null, null);
insert into t1 values (2, 'x');
insert into t1 values (1, 'x');
insert into t1 values (null, 'y');
WITH cte as (
select all c1, distinct c2 from t1)
SELECT * FROM cte;
WITH cte as (
select all c2, distinct c1 from t1)
SELECT * FROM cte;
drop class t1;
