create table foo (i int primary key, j int);
create unique index u_idx on foo (i, j);
create index idx on foo (i, j desc);
insert into foo values (1,1);
insert into foo values (2,2);
insert into foo values (3,3);
WITH cte as (
select * from foo order by 1,2)
SELECT * FROM cte;
drop table foo;
