use employee;
-- Q1 display employee details who has maximum salary --
select * from employee
where Sal = (
             select MAX(Sal) from employee
);

-- Q2 -- display clerk details who have maximum salary among clerks
select EMPNO, ENAME from employee
where
job = 'clerk'
and
sal = (
		select MAX(Sal) from employee where job = 'clerk'
        );
        
-- Q3 -- 
select 
ENAME, JOB
from employee
where 
job = 'salesman'
and Sal
>
    ( select MAX(Sal) from employee where job = 'clerk'
    );
    
-- Q4 --
select EMPNO, ENAME from employee
where
job = 'clerk'
and Sal
>
( select Sal from employee where ENAME = 'James'
)
and Sal
<
( select sal from employee where ENAME = 'Scott'
);

-- Q5 --
select EMPNO, ENAME from employee
WHERE
Sal
>
( select Sal from employee where ENAME = 'James'
)
or
Sal
>
( select sal from employee where ENAME = 'Scott'
);
 
-- Q6 --
select EMPNO, ENAME, SAL
from
employee E
   where 
   Sal =
   (
    select MAX(SAL) from employee where deptno = E.DEPTNO
    );
    
-- Q7 -- 
select EMPNO, ENAME, JOB, SAL
from employee E
where SAL = (
			 select MAX(SAL) from employee where job = E.JOB
             );

-- Q8 --
select EMPNo, ENAME, JOB
from employee E
WHERE 
DEPTNO = (
           select DEPTNO from department where DNAME = 'accounting'
           );
           
-- Q9 --
select EMPNO, ENAME, JOB
from employee E
WHERE
DEPTNO = (
           select DEPTNO from department where location = 'chicago'
           );

-- Q10 --
select
JOB, MAX(SAL) as TOTAL_SALARY
FROM 
employee
group by
job
-- having --> use for filter ---
having
SUM(SAL)
>
(
 select MAX(SAL) from employee where job = 'Manager'
 );
		