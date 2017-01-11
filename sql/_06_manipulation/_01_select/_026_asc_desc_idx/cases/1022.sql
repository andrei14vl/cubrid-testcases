create class ddl_0001( col1 float(5), col2 real(6), col3 double, col4 monetary , col5 double );
insert into ddl_0001 values(1001.1, 1001, 10001.1, 1001,10001);
insert into ddl_0001 values(1002.1, 1002, 10002.1, 1002,10002);
insert into ddl_0001 values(1003.1, 1003, 10003.1, 1003,10003);
insert into ddl_0001 values(1004.1, 1004, 10004.1, 1004,10004);
insert into ddl_0001 values(1005.1, 1005, 10005.1, 1005,10005);
insert into ddl_0001 values(1006.1, 1006, 10006.1, 1006,10006);
insert into ddl_0001 values(1007.1, 1007, 10007.1, 1007,10007);
insert into ddl_0001 values(1008.1, 1008, 10008.1, 1008,10008);
insert into ddl_0001 values(1009.1, 1009, 10009.1, 1009,10009);
create unique index ddl_0001_idx0 on ddl_0001(col1 asc);
create unique index ddl_0001_idx1 on ddl_0001(col2 desc);
create unique index ddl_0001_idx2 on ddl_0001(col3 asc);
create unique index ddl_0001_idx3 on ddl_0001(col4 desc);
create unique index ddl_0001_idx4 on ddl_0001(col1 asc, col2 desc, col3 asc);
create unique index ddl_0001_idx5 on ddl_0001(col1 asc,col2 desc, col3 desc, col4 asc);
create unique index ddl_0001_idx6 on ddl_0001(col5 desc, col2 asc, col3 desc);
create unique index ddl_0001_idx7 on ddl_0001(col4 desc, col5 asc, col1 asc);
create unique index ddl_0001_idx8 on ddl_0001(col1 desc, col2 asc, col4 desc);
create unique index ddl_0001_idx9 on ddl_0001(col3 desc ,col5 asc, col5 desc);
create unique index ddl_0001_idx10 on ddl_0001(col2 asc, col4 desc, col1 desc);
WITH cte as (
select * from db_index where class_name='ddl_0001' order by 1,2,3)
SELECT * FROM cte;
WITH cte as (
select * from db_index_key where class_name='ddl_0001' order by 1,2,3)
SELECT * FROM cte;
WITH cte as (
select * from ddl_0001 where col1 < 1005 order by 1,2,3)
SELECT * FROM cte;
update ddl_0001 set col2 = 1010 where col2=1001;
delete from ddl_0001;
drop class ddl_0001;
