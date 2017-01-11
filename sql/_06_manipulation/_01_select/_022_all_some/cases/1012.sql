create class t1 (c1 int, c2 varchar(20));
insert into t1 values(101, 'aaa');
insert into t1 values(102, 'bbb');
insert into t1 values(103, 'ddd');
insert into t1 values(104, 'ccc');
insert into t1 values(105, 'eee');
insert into t1 values(null, 'eee');
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
