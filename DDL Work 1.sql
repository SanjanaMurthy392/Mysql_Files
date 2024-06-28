create database sample;
create table sample (start_date date, End_date date, Task varchar(20));
describe sample;
alter table sample drop column start_date End_date Task;
use sample;