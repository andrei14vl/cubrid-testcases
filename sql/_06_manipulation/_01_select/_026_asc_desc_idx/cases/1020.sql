create class ddl_0001(col1 int, col2 string, col3 char(10), col4 varchar(10));
insert into ddl_0001  values(101,'101','10001','1000001');
insert into ddl_0001  values(102,'102','10002','1000002');
insert into ddl_0001  values(103,'103','10003','1000003');
insert into ddl_0001  values(104,'104','10004','1000004');
insert into ddl_0001  values(105,'105','10005','1000005');
insert into ddl_0001  values(106,'106','10006','1000006');
insert into ddl_0001  values(107,'107','10007','1000007');
insert into ddl_0001  values(108,'108','10008','1000008');
insert into ddl_0001  values(109,'109','10009','1000009');
create unique index ddl_0001_idx0 on ddl_0001(col1 asc);
create unique index ddl_0001_idx1 on ddl_0001(col3 desc);
create unique index ddl_0001_idx7 on ddl_0001(col2 asc);
create unique index ddl_0001_idx8 on ddl_0001(col4 asc);
create unique index ddl_0001_idx2 on ddl_0001(col2 asc, col3 desc);
create unique index ddl_0001_idx3 on ddl_0001(col3 desc, col4 asc);
create unique index ddl_0001_idx4 on ddl_0001(col4 desc, col1 asc);
create unique index ddl_0001_idx5 on ddl_0001(col1 asc,col2 desc, col3 desc, col4 asc);
WITH cte as (
select * from db_index where class_name='ddl_0001' order by 1,2,3)
SELECT * FROM cte;
WITH cte as (
select * from db_index_key where class_name='ddl_0001' order by 1,2,3)
SELECT * FROM cte;
WITH cte as (
select * from ddl_0001 where col1 < 105 order by 1,2,3)
SELECT * FROM cte;
delete from ddl_0001 where col1=101;
update ddl_0001 set col1=1000 where col1=102;
drop class ddl_0001;
