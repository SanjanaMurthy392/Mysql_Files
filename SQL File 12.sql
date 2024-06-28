update medicines set qty=19 where med_id=102;
select * from orders;
create table emp_details (empid int primary key, name varchar(20) not null);
insert into emp_details values (1,'Renu');
select * from emp_details;
select * from emp; #trigger will be created here because the DML will happen on this. 
create table job_history (empid int,job varchar(20),sal int,deptno int);
select * from job_history;
update emp set sal=sal+2000,job='salesman' where ename='smith';
select * from dept;
create table audit_table (username varchar(33),action_name varchar(20),action_time datetime);
select user();
update dept set loc='india' where deptno=10;
select * from audit_table;
delete from dept where deptno=20;