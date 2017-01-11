create class xoo ( a int, b char(5), c varchar(5));
create index idx1 on xoo(a desc, b asc, c desc);
insert into xoo values(1, '9','8');
insert into xoo values(4, '8','8');
insert into xoo values(3, '7','8');
insert into xoo values(1, '2','8');
insert into xoo values(1, '4','7');
insert into xoo values(1, '4','3');
insert into xoo values(1, '4','1');
insert into xoo values(1, '4','7');
insert into xoo values(9, '2','8');
insert into xoo values(7, '2','9');
insert into xoo values(2, '3','8');
insert into xoo values(5, '5','0');
insert into xoo values(6, '8','8');
insert into xoo values(8, '9','3');
insert into xoo values(8, '9','2');
WITH cte as (
select * from xoo xoo where (a not in set4, 5, 6) and (a>5)  order by 1)
SELECT * FROM cte;
drop xoo;
