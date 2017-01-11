create class t1 (col1 int, col2 char(2));
insert into t1 values(1, 'x');
insert into t1 values(2, 'y');
WITH cte as (
select * from only t1)
SELECT * FROM cte;
WITH cte as (
select * from all t1)
SELECT * FROM cte;
drop class t1;
