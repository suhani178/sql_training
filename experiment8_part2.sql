drop table employee_master;
show tables;

select * from employee;

-- we have to create salary grade table --
create table salgrade
( 
grade int,
minpay int,
maxpay int);
desc salgrade;
show tables;
