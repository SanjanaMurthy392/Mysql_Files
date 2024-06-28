create table students(stud_id int,name varchar(20),phone_no int,primary key(stud_id,phone_no));
insert into students values (1,'A',1234);
insert into students values (2,'B',1234);

select * from emp;
insert into emp select * from emp;
create table emp_copy as select * from emp where 1=0;
desc emp_copy;
select * from(
select row_number() over(partition by empno) as rowid,ename,sal from emp)t1 
where rowid=1;

select sum(sal) as total, deptno
from emp where deptno in (10,20)
group by deptno
having sum(Sal)>9600;