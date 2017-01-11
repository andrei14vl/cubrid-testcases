create class ddl_0001(col1 varchar(10), col2 char(4), col3 char(10), col4 char(5), col5 varchar,primary key(col1, col2,col3, col4, col5));
insert into ddl_0001 values('1001','1001','2041','10001','1');
insert into ddl_0001 values('1002','1002','2042','10002','2');
insert into ddl_0001 values('1003','1003','2043','10003','3');
insert into ddl_0001 values('1004','1004','2044','10004','4');
insert into ddl_0001 values('1005','1005','2045','10005','5');
insert into ddl_0001 values('1006','1006','2046','10006','6');
insert into ddl_0001 values('1007','1007','2047','10007','7');
insert into ddl_0001 values('1008','1008','2048','10008','8');
create class ddl_0002(col1 varchar(10), col2 char(4), col3 char(10), col4 char(5), col5 varchar ,foreign key(col1,col2, col3, col4, col5) references ddl_0001(col1,col2,col3,col4,col5));
insert into ddl_0002 values('1001','1001','2041','10001','1');
insert into ddl_0002 values('1002','1002','2042','10002','2');
insert into ddl_0002 values('1003','1003','2043','10003','3');
insert into ddl_0002 values('1004','1004','2044','10004','4');
insert into ddl_0002 values('1005','1005','2045','10005','5');
insert into ddl_0002 values('1006','1006','2046','10006','6');
insert into ddl_0002 values('1007','1007','2047','10007','7');
insert into ddl_0002 values('1008','1008','2048','10008','8');
create index dd_0002_idx0 on ddl_0002(col1 desc);
create index dd_0002_idx1 on ddl_0002(col2 asc);
create index dd_0002_idx2 on ddl_0002(col3 desc);
create index dd_0002_idx3 on ddl_0002(col4 asc);
create index dd_0002_idx4 on ddl_0002(col5 desc);
create index dd_0002_idx5 on ddl_0002(col1 desc,col2 asc);
create index dd_0002_idx6 on ddl_0002(col1 desc,col3 asc);
create index dd_0002_idx7 on ddl_0002(col1 asc, col5 desc);
create index dd_0002_idx8 on ddl_0002(col5 desc,col4 asc);
create index dd_0002_idx9 on ddl_0002(col3 desc, col2 asc);
create index dd_0002_idx10 on ddl_0002(col4 asc, col1 desc);
create index dd_0002_idx11 on ddl_0002(col1 desc, col2 asc, col3 desc, col4 asc, col5 desc);
WITH cte as (
select * from db_index where class_name in ('ddl_0001','ddl_0002') order by 1,2,3)
SELECT * FROM cte;
drop class ddl_0002;
drop class ddl_0001;
