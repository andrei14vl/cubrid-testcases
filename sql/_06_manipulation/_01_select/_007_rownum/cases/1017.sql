create class t1(col1 integer, col2 varchar(20));
insert into t1 values(101, 'aaa');
insert into t1 values(102, 'bbb');
insert into t1 values(103, 'ccc');
insert into t1 values(104, 'ddd');
insert into t1 values(101, 'aaa');
insert into t1 values(102, 'bbb');
insert into t1 values(103, 'ccc');
insert into t1 values(104, 'ddd');
insert into t1 values(101, 'aaa');
insert into t1 values(102, 'bbb');
insert into t1 values(103, 'ccc');
insert into t1 values(104, 'ddd');
insert into t1 values(101, 'aaa');
insert into t1 values(102, 'bbb');
insert into t1 values(103, 'ccc');
insert into t1 values(104, 'ddd');
WITH cte as (
select * 
from (select col1, col2 from t1 order by col1) as t(col1, col2) 
where  col1 > 101 and rownum between 1 and 5)
SELECT * FROM cte;
WITH cte as (
select * from t1 
where col1 > 101
order by col1 for orderby_num() between 1 and 10)
SELECT * FROM cte;
drop class t1;
