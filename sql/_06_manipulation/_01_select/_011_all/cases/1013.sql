create class t1 (col1 int, col2 char(2));
create class sub_t1 as subclass of t1
(col3 int, col4 char(2));
insert into t1 values(1, 'x');
insert into t1 values(2, 'y');
WITH cte as (
select * from t1)
SELECT * FROM cte;
WITH cte as (
select * from sub_t1)
SELECT * FROM cte;
insert into sub_t1 values(1, 'x', 2,'a');
insert into sub_t1 values(2, 'y', 3,'c');
insert into sub_t1 values(3, 'z', 4,'b');
WITH cte as (
select col1, col2 from t1
union all
select col1, col2 from sub_t1)
SELECT * FROM cte;
drop class t1;
drop class sub_t1;
