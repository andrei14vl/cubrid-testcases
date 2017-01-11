create table foo (i int, name string);
create table bar (i int, name string);
insert into foo values (1, 'a');
insert into foo values (1, 'b');
insert into foo values (1, 'c');
insert into foo values (2, 'e');
insert into bar values (1, 'x');
insert into bar values (4, 'w');
WITH cte as (
select  * from foo right outer join bar on foo.i = bar.i order by 1)
SELECT * FROM cte;
WITH cte as (
select  * from foo right outer join bar on foo.i = bar.i order by 1)
SELECT * FROM cte;
drop table foo;
drop table bar;
