WITH cte as (
select (i+i)-(i+1)*(i+2) from table(1,1,1,2,2,3,3,3,3,10,10,10) as t(i) group by (i+i)-(i+1)*(i+2))
SELECT * FROM cte;
WITH cte as (
select (i+i)*(i+1)*(i+2) from table(1,1,1,2,2,3,3,3,3,10,10,10) as t(i) group by (i+i)*(i+1)*(i+2))
SELECT * FROM cte;
WITH cte as (
select ((((((((((i+1)+1)+1)+1)+1)+1)+1)+1)+1)+1) from table(1,1,1,2,2,3,3,3,3,10,10,10) as t(i)  
group by ((((((((((i+1)+1)+1)+1)+1)+1)+1)+1)+1)+1))
SELECT * FROM cte;
