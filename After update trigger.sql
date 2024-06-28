CREATE DEFINER=`root`@`localhost` TRIGGER `emp_AFTER_UPDATE` AFTER UPDATE ON `emp` FOR EACH ROW BEGIN
if old.sal<>new.sal or old.deptno<>new.deptno or old.job<>new.job then
insert into job_history values(old.empno,old.job,old.sal,old.deptno);
end if;
END

CREATE DEFINER=`root`@`localhost` TRIGGER `dept_AFTER_UPDATE` AFTER UPDATE ON `dept` FOR EACH ROW BEGIN
insert into audit_table values (user(),"update",now());
END