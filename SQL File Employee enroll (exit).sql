call scott.employee_enroll(1, 'Alexa ');
CREATE DEFINER=`root`@`localhost` PROCEDURE `employee_enroll`(pid int,pname varchar(20))
BEGIN
declare exit handler for 1062
select 'id already taken' as report;
declare continue handler for 1048
select 'cannot be kept blank' as report;
insert into emp_details values(pid,pname);
select * from emp_details;
END