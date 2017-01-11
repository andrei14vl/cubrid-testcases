create class t1 (col1 integer, 
                 col2 date, 
                 col3 char(10), 
                 col4 varchar(10),
                 col5 time,
                 col6 timestamp)
	PARTITION BY LIST (col1) (
	    PARTITION p0 VALUES IN (1001,1002,1003)
	);
insert into t1 values(1001, date'09/10/2008', 'char1','varchar101',TIME'16:08:33 pm',TIMESTAMP '8:15:00 PM 01/31/1994');
insert into t1 values(1002, date'09/10/2008', 'char1','varchar101',TIME'16:08:33 pm',TIMESTAMP '8:15:00 PM 01/31/1994');
insert into t1 values(1003, date'09/10/2008', 'char1','varchar101',TIME'16:08:33 pm',TIMESTAMP '8:15:00 PM 01/31/1994');
WITH cte as (
select * from t1 order by 1, 2, 3,4)
SELECT * FROM cte;
WITH cte as (
select * from t1__p__p0 where col1=1001
order by 1, 2, 3)
SELECT * FROM cte;
drop class t1;
