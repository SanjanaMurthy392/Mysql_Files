select ename,dname from emp join dept using(deptno);
select first_name,department_name 
from employees join departments
using(department_id);
select ename,dname from emp natural join dept;
select e.employee_id,first_name from employees e 
natural join job_history jh;
select right('renu',1);
select right('renu',2);
select right('renu',3);
select left('renu',1);
select left('renu',2);
select left('renu',3);
select lower('RENU');
select upper('renu');
select lower(ename),ename from emp;
select lcase('RENU'), ucase('renu');
select concat(ename,sal) from emp;
select concat('renu',null);
select concat('renu',123,'2024-01-01');
select concat(1245,123,'2024-01-01');
select concat(' ',' ','renu');
select length(concat(' ',' ','renu'));
select length('renu');
select length(length('renu'));
select length(length(length('renu')));
select length(length(length(length('renu'))));
select max(sal) from emp;
select max(Sal) from emp group by deptno;
select mid('RENU NAIR',1,1);
select mid('RENU NAIR',2,2);
select mid('RENU NAIR',7,3);
select mid('Renu Nair',9,1);
select mid("Renu Nair",-1,1);
select mid('RENU NAIR',-3,3);
select ename,mid(ename,-2,1) from emp;
select mid('smith',3,1);
select length('smith')/2;
select round(length('smith')/2);
select mid('smith',round(length('smith')/2),1);
select mid(ename,round(length(ename)/2),1) as report,ename from emp where mod(length(ename),2)<>0;
select length('Sanjana')/2;
select round(length('Sanjana')/2);
select mid('Sanjana',round(length('Sanjana')/2),1);
select upper(left('renu',1)),'renu';
select concat(upper(left('renu',1)),lower(mid('renu',2))) as name;
select concat(upper(left('sanjana',1)),lower(mid('sanjana',2))) as name;
select locate('r','renu');
select locate('r','renu nair',2);
select locate('r','renu nair',locate('r','renu nair')+1);
select locate('a','Sanjana Murthy',locate('a','Sanjana Murthy')+1);
select locate('a','Sanjana Murthy',locate('a','Sanjana Murthy',locate('a','Sanjana Murthy')+1)+1);
select concat(upper(left('renu nair',1)),upper(mid('renu nair',6,1))) as name; #HW
select concat(upper(left('Sanjana Murthy',1)),upper(mid('Sanjana Murthy',9,1))); #HW