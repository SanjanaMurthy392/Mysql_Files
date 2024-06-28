call scott.emp_info();
call scott.emp_info(7902);
delimiter $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `emp_info2`(in empid int)
BEGIN
declare v_ename varchar (20);
declare v_sal int;
select ename,sal into v_ename,v_sal from emp where empno=empid;
if v_sal>1000 then
select concat(v_ename,' good salary value ') as msg;
else
select concat(v_ename, ' Bad salary value ') as msg;
end if;
END $$
select * from emp$$ 
delimiter ;
select * from emp;
call scott.emp_info(7566);

set @status = '0';
call scott.emp_info(7902, @status);
select @status;
