create table departments (deptid int primary key, dname varchar(20) unique not null);
insert into departments values (10,'sales');
insert into departments values (20,'hr');
select * from departments;
create table employees
(
empid int primary key,
name varchar (20) not null,
salary int not null check(salary>0),
deptno int, foreign key(deptno) references departments(deptid) on delete set null on update cascade
);
insert into employees values(101,'renu',12000,10);
insert into employees values(102,'alex',13000,20);
insert into employees values(103,'sam',22000,10);
select * from employees;
delete from departments where deptid=20;
update departments set deptid=40 where deptid=10;
drop table employees;
drop table departments;
create table departments (deptid int primary key,dname varchar(20) unique not null);
insert into departments values (10,'sales');
insert into departments values (20,'hr');
select * from departments;
create table employees
(
empid int primary key,
name varchar(20) not null,
salary int not null check(salary>0),
deptno int,foreign key(deptno) references departments(deptid) on delete cascade on update set null
);
insert into employees values(101,'renu',12000,10);
insert into employees values(102,'alex',13000,20);
insert into employees values(103,'sam',22000,10);
select * from employees;
delete from departments where deptid=20;
update departments set deptid=40 where deptid=10;
drop table employees;
drop table departments;
create table departments (deptid int,dname varchar(20));
alter table departments add primary key(deptid);
alter table departments modify dname varchar(20) not null;
create table sample (sample_id int primary key auto_increment,sample_name varchar(20),sdate datetime default now());
insert into sample(sample_name) values('Sample A');
select * from sample;
insert into sample(sample_name) values('Sample b');