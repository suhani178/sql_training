/* Question 1*/
select distinct job from employee;

/* Question 2*/
select * from employee where deptno = 30;

/* Question 3*/
select deptno, dname from department where deptno > 20;

/* Question 4*/
select * from employee where job in ('manager', 'clerk') and deptno = 30;

/* Question 5*/
select ename, empno, deptno from employee where job = 'clerk';

/* Question 6*/
select * from employee where job = 'manager' and deptno <> 30;

/* Question 7*/
select * from employee where deptno = 10 and job not in ('manager','clerk');

/* Question 8*/
select * from employee where sal between 1200 and 1400;

/* Question 9*/
select ename, deptno from employee where job in ('clerk', 'analyst', 'salesman');

/* Question 10*/
select ename, deptno from employee where ename like 'm%';
