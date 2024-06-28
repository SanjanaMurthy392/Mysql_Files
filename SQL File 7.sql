select * from emp;
select * from dept;
select ename as name,dname,d.deptno from emp as e join dept as d on (d.deptno=e.deptno);
select ename,grade from emp inner join salgrade on sal between losal and hisal;
select ename,grade from emp inner join salgrade on sal>=losal and sal<=hisal;
select ename,dname from emp e right outer join dept d on (e.deptno=d.deptno) where ename is null;
select ename,dname from emp e left outer join dept d on (e.deptno=d.deptno) where dname is null;
select ename,dname from emp e full outer join dept d on (e.deptno=d.deptno);
select deptno from dept
union
select deptno from emp;
select deptno from emp
intersect
select deptno from dept;
select deptno from dept 
union all
select deptno from emp;
select ename,dname from emp e right outer join dept d on (e.deptno=d.deptno)
union
select ename,dname from emp e left outer join dept d on (e.deptno=d.deptno);
select ename,dname from emp e right outer join dept d on (e.deptno=d.deptno)
union all
select ename,dname from emp e left outer join dept d on (e.deptno=d.deptno) where dname is null;
select ename,dname from emp cross join dept;
select * from customers;
select c1.city,c1.cust_name 
from customers c1 join customers c2
on (c1.city=c2.city) and c1.cust_id<>c2.cust_id;
select w.ename as worker,m.ename as reporting_manager 
from emp w join emp m on (w.mgr=m.empno);
select c1.city,c1.cust_name
from customers c1 join customers c2
on (c1.city=c2.city) where c1.cust_id<>c2.cust_id;