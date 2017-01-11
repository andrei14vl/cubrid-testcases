create class t1(id int, info set varchar(20));
insert into t1 values (101, 'Jerry', 'China');
insert into t1 values (102, 'Tom', 'America');
insert into t1 values (101, 'Nancy', 'Canada');
insert into t1 values (101, 'Livina', 'Japan');
WITH cte as (
select id, info from t1
where  info between 'Jerry', 'China' and 'Livina', 'Japan' order by 1,2)
SELECT * FROM cte;
drop class t1;
