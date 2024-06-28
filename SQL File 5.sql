select ename, sal from emp
order by sal desc
limit 1;
select ename, sal from emp
order by sal desc 
limit 2;
select * from emp
order by hiredate asc
limit 1;
select * from emp
order by hiredate asc
limit 1,1;
select * from emp
order by hiredate asc
limit 2,2;
select * from emp
order by hiredate asc
limit 4,1;
select * from emp
order by hiredate desc
limit 1;
select * from emp
order by hiredate desc
limit 1,1;
select * from emp 
order by sal desc
limit 1,2;
select min(sal) from emp;
select max(sal) from emp;
select min(ename),min(hiredate) from emp;
select min(ename) from emp;
select * from emp order by ename asc;
select * from emp order by sal asc;
select * from emp order by hiredate asc;
select min(ename),min(sal) from emp;
select max(ename),max(sal),max(hiredate) from emp;
select min(sal),max(hiredate) from emp;
select count(empno) from emp;
select count(comm) from emp;
select count(*) from emp;
select sum(sal),avg(sal) from emp;
select min(sal), deptno from emp group by deptno;
select count(empno), job from emp group by job;
select count(empno), job from emp
group by job
having count(empno)>3;
select sum(sal) as total, 
deptno from emp
where deptno in (10,20)
group by deptno
having sum(sal)>9600;
select ename,job,sal as old_sal,
case
when job='clerk' then sal+100
when job='salesman' then sal+200
when job='manager' then sal+300
else 'no increment'
end as new_sal
from emp;
select ename,job,sal as old_sal,
case job
when 'clerk' then sal+100
when 'salesman' then sal+200
when 'manager' then sal+300
else 'no incremenet'
end as new_sal
from emp;
select ename,sal,
case 
when sal<=1000 then "poor"
when sal between 1001 and 3000 then "good"
when sal>3000 then "best"
end as status 
from emp;