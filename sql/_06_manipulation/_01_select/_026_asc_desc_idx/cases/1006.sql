create class ddl_0001( col1 set char(5) , col2 multiset varchar(10), col3 list int, col4 sequence int, col5 set date  );
insert into ddl_0001 values('a','b','c', 'a','b','c', 1,2,3, 11,11,11,sysdate,sysdate,sysdate);
insert into ddl_0001 values('a','b','c', 'a','b','c', 1,2,3, 11,11,11,sysdate,sysdate,sysdate);
insert into ddl_0001 values('a','b','c', 'a','b','c', 1,2,3, 11,11,11,sysdate,sysdate,sysdate);
insert into ddl_0001 values('a','b','c', 'a','b','c', 1,2,3, 11,11,11,sysdate,sysdate,sysdate);
insert into ddl_0001 values('a','b','c', 'a','b','c', 1,2,3, 11,11,11,sysdate,sysdate,sysdate);
insert into ddl_0001 values('a','b','c', 'a','b','c', 1,2,3, 11,11,11,sysdate,sysdate,sysdate);
insert into ddl_0001 values('a','b','c', 'a','b','c', 1,2,3, 11,11,11,sysdate,sysdate,sysdate);
insert into ddl_0001 values('a','b','c', 'a','b','c', 1,2,3, 11,11,11,sysdate,sysdate,sysdate);
create index ddl_0001_idx0 on ddl_0001(col1 asc);
create index ddl_0001_idx1 on ddl_0001(col2 asc);
create index ddl_0001_idx2 on ddl_0001(col3 desc);
create index ddl_0001_idx3 on ddl_0001(col4 asc);
create index ddl_0001_idx4 on ddl_0001(col5 desc);
create index ddl_0001_idx5 on ddl_0001(col1 asc,col2 desc, col3 desc, col4 asc);
create index ddl_0001_idx6 on ddl_0001(col5 desc, col1 asc, col2 desc);
create index ddl_0001_idx7 on ddl_0001(col4 desc, col1 asc, col4 desc);
WITH cte as (
select * from db_index where class_name = 'ddl_0001' order by 1,2,3)
SELECT * FROM cte;
update ddl_0001 set col5=sysdate;
delete from ddl_0001;
drop class ddl_0001;
