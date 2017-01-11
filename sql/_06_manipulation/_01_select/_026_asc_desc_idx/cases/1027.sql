create class ddl_0001(col1 date, col2 time, col3 date, col4 timestamp, col5 timestamp,primary key(col1, col2,col3, col4, col5));
insert into ddl_0001 values(date '08/08/2009', time '10:18', date '08/08/2008', timestamp '08/08/2008 10:18:00',timestamp '08/08/2008 10:18:00');
insert into ddl_0001 values(date '08/08/2008', time '10:17', date '08/02/2008', timestamp '08/08/2008 10:18:03',timestamp '08/08/2008 10:18:10');
insert into ddl_0001 values(date '08/08/2007', time '10:16', date '08/03/2008', timestamp '08/08/2009 10:18:05',timestamp '08/08/2008 10:18:20');
insert into ddl_0001 values(date '08/08/2006', time '10:15', date '08/05/2008', timestamp '08/08/2001 10:18:06',timestamp '08/08/2008 10:18:30');
insert into ddl_0001 values(date '08/08/2005', time '10:14', date '08/06/2008', timestamp '08/08/2002 10:18:07',timestamp '08/08/2008 10:18:40');
insert into ddl_0001 values(date '08/08/2004', time '10:13', date '08/07/2008', timestamp '08/08/2003 10:18:08',timestamp '08/08/2008 10:18:50');
insert into ddl_0001 values(date '08/08/2003', time '10:12', date '08/09/2008', timestamp '08/08/2000 10:18:09',timestamp '08/08/2008 10:18:51');
create class ddl_0002(col1 date, col2 time, col3 date, col4 timestamp, col5 timestamp ,foreign key(col1,col2, col3, col4, col5) references ddl_0001(col1,col2,col3,col4,col5));
insert into ddl_0002 values(date '08/08/2009', time '10:18', date '08/08/2008', timestamp '08/08/2008 10:18:00',timestamp '08/08/2008 10:18:00');
insert into ddl_0002 values(date '08/08/2008', time '10:17', date '08/02/2008', timestamp '08/08/2008 10:18:03',timestamp '08/08/2008 10:18:10');
insert into ddl_0002 values(date '08/08/2007', time '10:16', date '08/03/2008', timestamp '08/08/2009 10:18:05',timestamp '08/08/2008 10:18:20');
insert into ddl_0002 values(date '08/08/2006', time '10:15', date '08/05/2008', timestamp '08/08/2001 10:18:06',timestamp '08/08/2008 10:18:30');
insert into ddl_0002 values(date '08/08/2005', time '10:14', date '08/06/2008', timestamp '08/08/2002 10:18:07',timestamp '08/08/2008 10:18:40');
insert into ddl_0002 values(date '08/08/2004', time '10:13', date '08/07/2008', timestamp '08/08/2003 10:18:08',timestamp '08/08/2008 10:18:50');
insert into ddl_0002 values(date '08/08/2003', time '10:12', date '08/09/2008', timestamp '08/08/2000 10:18:09',timestamp '08/08/2008 10:18:51');
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
select * from db_index where class_name like 'ddl_000%' order by 1)
SELECT * FROM cte;
WITH cte as (
select * from db_index_key where class_name like 'ddl_00%' order by 1,2,3)
SELECT * FROM cte;
delete from ddl_0002;
drop class ddl_0002;
drop class ddl_0001;
