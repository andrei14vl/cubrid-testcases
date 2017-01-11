create class ddl_0001(col1 char(10) unique, col2 varchar(20) unique, col3 varchar(4096) unique , col4 char(1024) unique, col5 char(1)unique );
insert into ddl_0001 values('1001','1001','2041','100001','1');
insert into ddl_0001 values('1002','1002','2042','100002','2');
insert into ddl_0001 values('1003','1003','2043','100003','3');
insert into ddl_0001 values('1004','1004','2044','100004','4');
insert into ddl_0001 values('1005','1005','2045','100005','5');
insert into ddl_0001 values('1006','1006','2046','100006','6');
insert into ddl_0001 values('1007','1007','2047','100007','7');
insert into ddl_0001 values('1008','1008','2048','100008','8');
create index ddl_0001_idx0 on ddl_0001(col1 asc,col2 desc);
create index ddl_0001_idx1 on ddl_0001(col3 desc,col1 asc);
create index ddl_0001_idx2 on ddl_0001(col2 asc, col5 desc);
create index ddl_0001_idx7 on ddl_0001(col4 asc, col1 desc);
create index ddl_0001_idx8 on ddl_0001(col5 desc, col3 asc);
create index ddl_0001_idx9 on ddl_0001(col2 asc, col4 desc, col1 asc, col5 desc);
create index ddl_0001_idx3 on ddl_0001(col1 asc, col2 desc,col5 desc);
create index ddl_0001_idx4 on ddl_0001(col1 asc, col2 desc, col3 asc);
create index ddl_0001_idx5 on ddl_0001(col1 asc,col2 desc, col3 desc, col4 asc);
create index ddl_0001_idx6 on ddl_0001(col1 asc, col2 desc, col3 asc, col4 desc, col5 asc);
WITH cte as (
select * from db_index where class_name='ddl_0001' order by 1,2,3)
SELECT * FROM cte;
WITH cte as (
select * from db_index_key where class_name='ddl_0001' order by 1,2,3)
SELECT * FROM cte;
WITH cte as (
select * from ddl_0001 where col1 like '1004' order by 1,2,3)
SELECT * FROM cte;
delete from ddl_0001 where col1='1008';
update ddl_0001 set col1='2050' where col1='1001';
drop class ddl_0001;
