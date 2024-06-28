CREATE DEFINER=`root`@`localhost` TRIGGER `dept_AFTER_DELETE` AFTER DELETE ON `dept` FOR EACH ROW BEGIN
insert into audit_table values (user(),"delete",now());
END