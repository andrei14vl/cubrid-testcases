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
insert into t1 values(101, 'aaa');
insert into t1 values(102, 'bbb');
insert into t1 values(103, 'ccc');
insert into t1 values(104, 'ddd');
WITH cte as (
select col1, col2 from t1
where  col1 = 101
and inst_num() > 5)
SELECT * FROM cte;
WITH cte as (
select col1, col2 from t1
where  col1 = 101
and inst_num() > 2)
SELECT * FROM cte;
drop class t1;
