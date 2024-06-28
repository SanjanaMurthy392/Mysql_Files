CREATE DEFINER=`root`@`localhost` PROCEDURE `cube_no`(inout num int)
BEGIN
set num=num*num*num;
END