create class t1 (c1 int, c2 multiset varchar(20));
insert into t1 values(101, 'a','b','c','a','b');
insert into t1 values(102, 'l','m','n','l','m');
insert into t1 values(103, 'x','y','z','z','y');
insert into t1 values(104, 'd','e','f');
WITH cte as (
select * from t1
where c1 not in  (select c1 from t1 where ('d') in c2))
SELECT * FROM cte;
drop class t1;
