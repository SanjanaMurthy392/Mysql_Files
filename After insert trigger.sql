CREATE DEFINER=`root`@`localhost` TRIGGER `dept_AFTER_INSERT` AFTER INSERT ON `dept` FOR EACH ROW BEGIN
insert into audit_table values (user(),"insert",now());
END