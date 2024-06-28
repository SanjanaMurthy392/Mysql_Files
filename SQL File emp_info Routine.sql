CREATE DEFINER=`root`@`localhost` PROCEDURE `emp_info`(in empid int,out status varchar(30))
BEGIN
declare v_ename varchar (20);
declare v_sal int;
select ename,sal into v_ename,v_sal from emp where empno=empid;
if v_sal>1000 then
set status= concat(v_ename,' good salary value ');
else
set status= concat(v_ename, ' Bad salary value ');
end if;
END