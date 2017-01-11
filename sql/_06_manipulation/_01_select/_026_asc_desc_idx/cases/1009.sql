create class ddl_0001 ( col1 decimal(6,5), col2 integer , col3 smallint , col4 decimal(8,7), col5 integer);
insert into ddl_0001 values(1.0011, 1001,1001, 1.00011,10001);
insert into ddl_0001 values(1.0021, 1002,1002, 1.00011,10001);
insert into ddl_0001 values(1.0031, 1003,1003, 1.00011,10001);
insert into ddl_0001 values(1.0041, 1004,1004, 1.00011,10001);
insert into ddl_0001 values(1.0051, 1005,1005, 1.00011,10001);
insert into ddl_0001 values(1.0061, 1006,1006, 1.00011,10001);
insert into ddl_0001 values(1.0071, 1007,1007, 1.00011,10001);
insert into ddl_0001 values(1.0081, 1008,1008, 1.00011,10001);
insert into ddl_0001 values(1.0091, 1009,1009, 1.00011,10001);
create reverse index ddl_0001_idx0 on ddl_0001(col1 asc);
create reverse index ddl_0001_idx1 on ddl_0001(col2 asc);
create reverse index ddl_0001_idx2 on ddl_0001(col3 asc);
create reverse index ddl_0001_idx3 on ddl_0001(col4 desc);
create reverse index ddl_0001_idx4 on ddl_0001(col5 desc);
create reverse index ddl_0001_idx5 on ddl_0001(col1 asc,col2 desc);
create reverse index ddl_0001_idx6 on ddl_0001(col1 desc, col2 asc, col3 desc, col4 asc, col5 asc);
create reverse index ddl_0001_idx7 on ddl_0001(col3 desc, col4 asc, col5 desc);
create reverse index ddl_0001_idx8 on ddl_0001(col1 desc, col2 asc, col4 desc);
create reverse index ddl_0001_idx9 on ddl_0001(col5 desc, col3 asc, col1 desc);
create reverse index ddl_0001_idx10 on ddl_0001(col5 desc, col2 asc, col4 desc);
WITH cte as (
select * from db_index where class_name='ddl_0001' order by 1,2,3)
SELECT * FROM cte;
WITH cte as (
select * from db_index_key where class_name='ddl_0001' order by 1,2,3)
SELECT * FROM cte;
WITH cte as (
select * from ddl_0001 where col1 =1.0051 using index ddl_0001_idx0(+) order by 1,2,3)
SELECT * FROM cte;
update ddl_0001 set col2 = 1010;
delete from ddl_0001;
drop class ddl_0001;
