select * from emp where sal=(select max(sal) from emp);
select * from emp where sal in (select min(sal) from emp group by deptno);
select min(sal) from emp group by deptno;
select * from emp where sal in(950,800,1300);
select * from emp where sal >all(select min(sal) from emp group by deptno);
select * from emp where sal <all(select min(sal) from emp group by deptno);
select * from emp where sal <all(select max(sal) from emp group by deptno);
select * from emp where sal=all(select min(sal) from emp group by deptno);
select * from emp where sal<1200;
select * from emp where sal>any(select min(sal) from emp group by deptno);
select * from emp where sal<any(select min(sal) from emp group by deptno);
select * from emp where sal=any(select min(sal) from emp group by deptno);
select * from emp where sal in (select min(sal) from emp group by deptno);
select * from emp where sal <>all (select min(sal) from emp group by deptno);
select * from emp where sal <>any (select min(sal) from emp group by deptno);
select avg(sal),deptno from emp group by deptno;
select ename,sal,deptno from emp order by deptno;
select ename,sal,deptno from emp o where sal>(select avg(sal) from emp i where i.deptno=o.deptno);
select avg(sal),deptno from emp group by deptno;
select ename,sal,deptno from emp where deptno=10;
select ename,sal,deptno from emp o where sal>(select avg(sal) from emp i where i.deptno=o.deptno);
select * from emp;
select * from dept;
select * from dept d where exists (select deptno from emp e where e.deptno=d.deptno);
select * from dept d where not exists (select deptno from emp e where e.deptno=d.deptno);
select count(empno) as cnt,sum(Sal) as total_income,dname
from emp e join dept d
on (e.deptno=d.deptno)
group by dname;
select count(empno) as cnt,sum(sal) as total_income,dname
from emp e right join dept d 
on (e.deptno=d.deptno)
group by dname;
select count(empno) as cnt,ifnull(sum(sal+ifnull(comm,0)),0) as total_income,dname
from emp e right join dept d
on (e.deptno=d.deptno)
group by dname;
create view dept_info as 
select count(empno) as cnt,ifnull(sum(sal+ifnull(comm,0)),0) as total_income,dname
from emp e right join dept d
on (e.deptno=d.deptno)
group by dname;
select * from dept_info;
insert into emp(empno,ename,sal,deptno) values (12,'Renu',2000,20);
delete from emp where empno=12;
create view emp_info
as
select empno,ename,deptno from emp where deptno=10;
select * from emp_info;
insert into emp_info values(12,'Renu',10);
alter view emp_info as select empno,ename,job,deptno
from emp where deptno=10;
create or replace view emp_info
as
select empno,ename,deptno from emp where deptno=10;
create or replace view emp_info
as
select empno,ename,deptno from emp where deptno=10 with check option;
insert into emp_info values(14,'Renu',20);
drop view emp_info;
select * from emp;