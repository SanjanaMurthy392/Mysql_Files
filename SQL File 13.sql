Delimiter //
CREATE DEFINER=`root`@`localhost` FUNCTION `proper`(name varchar(30)) RETURNS varchar(30) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
declare str_value varchar(30);
set str_value=concat(upper(mid(name,1,1)),lower(mid(name,2)));
RETURN str_value;
END
Delimiter ;

select concat(upper(mid(name,1,1)),lower(mid(name,2)));
select proper(ename),ename from emp;
select proper('sanjana');

USE `scott`;
DROP function IF EXISTS `age`;

DELIMITER //
USE `scott`;
CREATE FUNCTION `age` (dob date)
RETURNS INTEGER deterministic
BEGIN
declare age_value int;
set age_value=timestampdiff(year,dob,now());
RETURN age_value;
END;

DELIMITER ;

select scott.age('2021-02-12');
select * from (
select rank() over(order by sal desc) as rank_value,ename,sal,deptno from emp) t1;
create view t1
as
select rank() over(order by sal desc) as rank_value,ename,sal,deptno from emp;
select ename,sal,hiredate from emp where month(hiredate)=12;
select * from (
select rank() over(order by sal desc) as rank_value,ename,sal,deptno from emp) t1
where rank_value=1;

select * from (
select rank() over(order by sal desc) as rank_value,ename,sal,deptno from emp) t1
where rank_value=2;

select rank() over(partition by deptno order by sal desc) as rank_value, ename, sal, deptno from emp;
delete from emp where sal is null;

select dense_rank() over(order by sal desc) as rank_value, ename, sal, deptno from emp;

select * from (
select dense_rank() over(order by sal desc) as rank_value,ename,sal,deptno from emp) t1
where rank_value=3;

select sum(sal) as grand_total from emp;

select deptno, sum(sal) as total,sum(sum(sal)) over() as grand_total 
from emp group by deptno;

select deptno, (sum(sal) /sum(sum(sal)) over()*100) as grand_total 
from emp group by deptno;

select deptno,round((sum(sal) /sum(sum(sal)) over())*100) as "pot"
from emp group by deptno;

select deptno,concat(round((sum(sal) /sum(sum(sal)) over())*100),"%") as "pot"
from emp group by deptno;

select deptno,sum(sal),sum(sum(sal)) over() from emp group by deptno;

select year(hiredate) as year,sum(sal) as cy from emp group by year;

select year(hiredate) as year,sum(sal) as cy,lag(sum(sal),1,0) over() as py from emp group by year;

select year(hiredate) as year, 
((sum(sal)-lag(sum(sal),1,0) over())
/lag(sum(sal),1,0) over())*100 as "YOY % GROWTH" from emp group by year;

select ename,sal,lag(sal,1,0) over() from emp;

select ename,sal,lag(sal,2,0) over() from emp;

select ename,sal,lead(sal,1) over() from emp;

select ename,sal,lead(sal,1,0) over() from emp;

select row_number() over() as sr_no,ename,sal from emp;

select percent_rank() over(order by sal), ename,sal from emp;

select ename,sal from emp;

select first_value(sal) over() as "first",ename,sal from emp;

select last_value(sal) over() as "last",ename,sal from emp;