show tables;
desc emp;
select * from emp;
select ename, job from emp;
select ename, job, sal*12 from emp;
select ename,job,(sal-100)*12 from emp;
select ename as name,job,sal*12 as annual_salary from emp;
select deptno from emp;
select distinct deptno from emp;
select distinct deptno,job from emp;
select ename,sal,comm,sal+ifnull(comm,0) as income from emp;
select comm,ifnull(comm,0) from emp;
select comm,isnull(comm) from emp;
select * from emp
where sal=1250;
select * from emp
where sal>1250;
select * from emp
where sal<1250;
select * from emp
where job<>'clerk';
select * from emp
where deptno in (10,20);
select * from emp
where job in ('clerk','salesman');
select ename from emp
where ename like "s%";
select ename from emp
where ename like "%s";
select ename from emp
where ename like "%s%";
insert into emp(empno,ename) values (123,"Resnu");
delete from emp where empno=123;
delete from emp where ename="Resnu";
select ename from emp
where ename like "%a%a%";
select * from emp where ename like '__i%';
select * from emp where ename like '%e_';
select * from emp where sal between 1250 and 3000;
select * from emp where comm is null;
select * from emp where job='clerk' and deptno=20;
select * from emp where job='clerk' or job='salesman';
select * from emp where deptno=30 or job='clerk';
select * from emp where job='salesman' and deptno=30 or job='clerk';
select * from emp where (job='clerk' or job='salesman') and sal>1000;
select ename from emp
where ename not like 's%';
select * from emp where comm is not null;
select * from emp where ename not in ('smith','scott');
select ename, sal from emp
order by sal asc;
select ename, sal from emp
order by sal desc;
select ename, sal from emp
order by ename asc;
select ename as name, sal as salary
from emp
order by salary desc;
select ename as name,sal,hiredate,job
from emp
order by 2 desc;
