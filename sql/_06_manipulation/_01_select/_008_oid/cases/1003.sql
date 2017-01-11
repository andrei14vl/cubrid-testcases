create class t1(x char(1), y char(2));
create class t2(a char(1), b t1);
insert into t2 values('x',(insert into t1 values('a','b')));
insert into t2 values('y',(insert into t1 values('c','d')));
insert into t2 values('z',(insert into t1 values('e','f')));
WITH cte as (
select b into :h from t2 where  a = 'x')
SELECT * FROM cte;
WITH cte as (
select x, y into :g, :h from t1 where x = 'a')
SELECT * FROM cte;
drop class t1;
drop class t2;
