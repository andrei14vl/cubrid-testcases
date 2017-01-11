create class ddl_0001( col1 date , col2 time , col3 date , col4 timestamp , col5 timestamp );
insert into ddl_0001 values(date '08/08/2009', time '10:18', date '08/08/2008', timestamp '08/08/2008 10:18:00',timestamp '08/08/2008 10:18:00');
insert into ddl_0001 values(date '08/08/2008', time '10:17', date '08/02/2008', timestamp '08/08/2008 10:18:03',timestamp '08/08/2008 10:18:10');
insert into ddl_0001 values(date '08/08/2007', time '10:16', date '08/03/2008', timestamp '08/08/2009 10:18:05',timestamp '08/08/2008 10:18:20');
insert into ddl_0001 values(date '08/08/2006', time '10:15', date '08/05/2008', timestamp '08/08/2001 10:18:06',timestamp '08/08/2008 10:18:30');
insert into ddl_0001 values(date '08/08/2005', time '10:14', date '08/06/2008', timestamp '08/08/2002 10:18:07',timestamp '08/08/2008 10:18:40');
insert into ddl_0001 values(date '08/08/2004', time '10:13', date '08/07/2008', timestamp '08/08/2003 10:18:08',timestamp '08/08/2008 10:18:50');
insert into ddl_0001 values(date '08/08/2003', time '10:12', date '08/09/2008', timestamp '08/08/2000 10:18:09',timestamp '08/08/2008 10:18:51');
create unique index ddl_0001_idx0 on ddl_0001(col1 asc);
create unique index ddl_0001_idx1 on ddl_0001(col2 desc);
create unique index ddl_0001_idx2 on ddl_0001(col3 asc);
create unique index ddl_0001_idx3 on ddl_0001(col4 desc);
create unique index ddl_0001_idx4 on ddl_0001(col5 asc);
create unique index ddl_0001_idx5 on ddl_0001(col1 asc,col2 desc, col3 desc, col4 asc);
create unique index ddl_0001_idx6 on ddl_0001(col5 desc, col4 asc, col1 desc);
create unique index ddl_0001_idx7 on ddl_0001(col3 desc, col2 asc, col1 asc);
create unique index ddl_0001_idx8 on ddl_0001(col4 desc, col1 asc, col3 desc);
create unique index ddl_0001_idx9 on ddl_0001(col1 asc, col5 desc, col4 asc);
create unique index ddl_0001_idx10 on ddl_0001(col3 desc, col2 asc, col1 desc);
WITH cte as (
select * from db_index where class_name = 'ddl_0001' order by 1)
SELECT * FROM cte;
update ddl_0001 set col1 = sysdate where rownum = 1;
delete from ddl_0001;
drop class ddl_0001;
