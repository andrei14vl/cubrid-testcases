create class t1 (c1 set int, c2 varchar(20));
insert into t1 values(101,102, 'aaa');
insert into t1 values(102,103, 'bbb');
insert into t1 values(103,104, 'ddd');
insert into t1 values(104,105, 'ccc');
insert into t1 values(105,106, 'eee');
insert into t1 values(107,108, 'eee');
WITH cte as (
select * from t1 where c1 < all(select c1 from t1 where c2='eee'))
SELECT * FROM cte;
WITH cte as (
select * from t1 where c1 = all(select c1 from t1 where c2='eee'))
SELECT * FROM cte;
WITH cte as (
select * from t1 where c1 > all(select c1 from t1 where c2='eee'))
SELECT * FROM cte;
WITH cte as (
select * from t1 where c1 <> all(select c1 from t1 where c2='eee'))
SELECT * FROM cte;
drop class t1;
