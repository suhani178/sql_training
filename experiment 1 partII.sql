use employee;

/* Question 1*/
create table employee_master as 
select * from employee;

show tables;
select * from employee_master;

/* Question 2*/
delete from employee_master
where deptno = 10;

select * from employee_master;

/* Question 3*/
update employee_master set sal = sal + (sal * 0.10)
where deptno = 20;

select * from employee_master;

/* Question 4*/
alter table employee_master modify sal decimal(10, 2);

desc employee_master; 
select * from employee_master;