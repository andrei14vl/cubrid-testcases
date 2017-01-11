create class ttt ( t char(1));
create class tbl ( t char(1));
insert into ttt values('a');
insert into tbl values ('b');
insert into tbl values('a');
WITH cte as (
select set  {t, 'a'}  from ttt order by 1)
SELECT * FROM cte;
WITH cte as (
select *  from tbl order by 1)
SELECT * FROM cte;
WITH cte as (
select set {t,'a'} from tbl order by 1)
SELECT * FROM cte;
drop class ttt;
drop class tbl;
