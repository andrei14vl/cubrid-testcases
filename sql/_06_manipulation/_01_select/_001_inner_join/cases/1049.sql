call login('dba', '') on class db_user;
create user user1;
create user user2;
call login('user1', '') on class db_user;
create table xoo ( id int);
insert into xoo values(10000);
WITH cte as (
grant select on xoo to user2)
SELECT * FROM cte;
call login('user2', '') on class db_user;
create table zoo ( id int, x xoo);
WITH cte as (
insert into zoo values(2, (select xoo from xoo)))
SELECT * FROM cte;
call login('user1', '') on class db_user;
WITH cte as (
revoke select on xoo from user2)
SELECT * FROM cte;
call login('user2', '') on class db_user;
WITH cte as (
select x into :oid from zoo)
SELECT * FROM cte;
create class poo ( id int);
WITH cte as (
select :oid.id from db_root)
SELECT * FROM cte;
insert into poo values(:oid.id);
WITH cte as (
select * from poo)
SELECT * FROM cte;
call login('dba', '') on class db_user;
drop xoo;
drop poo;
drop zoo;
drop user user1;
drop user user2;
