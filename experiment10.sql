-- Q1 --
select EMPNO, ENAME
from employee 
where 
DEPTNO = 10
and Sal 
> any
( select Sal
from employee
where DEPTNO <> 10
);

-- Q2 --
select EMPNO, ENAME
from employee 
where 
DEPTNO = 10
and Sal 
> all
( select Sal
from employee
where DEPTNO <> 10
);

-- Q3 --
select 
E.*
from employee E
   inner join
department D
    on E.DEPTNO = D.DEPTNO
    join
SALGRADE SG
    on E.SAL between minpay and maxpay
    where 
    D.DNAME = 'SALES'
    and SG.GRADE = 3;
    
-- Q4 --
select EMPNO, ENAME, JOB
from employee 
where JOB <> 'MANAGER';

-- Q5 --
select 
E.ENAME as EMPLOYEE_NAME,
MG.ENAME as MANAGER_NAME
from employee E
inner join
employee MG on E.MGR = MG.EMPNO
where
MG.ENAME = 'JONES';

-- Q6 --
select E.ENAME, D.DNAME
from employee E
INNER JOIN department D
on E.DEPTNO = D.DEPTNO
where
D.DNAME = 'SALES';

-- Q7 --
select E.ENAME, IFNULL(E.COMM, 'NOT ALLOTTED') AS COMMISSION,
D.DNAME from employee E
INNER JOIN department D
ON E.DEPTNO = D.DEPTNO
where
E.SAL BETWEEN 2000 and 5000
and D.LOCATION = 'chicago';

-- Q8 --
select E.ENAME, E.SAL from employee E
INNER JOIN EMPLOYEE MG
on E.MGR = MG.EMPNO
and E.SAL > MG.SAL;

-- Q9 --
select E.ENAME, E.DEPTNO from employee E
INNER JOIN EMPLOYEE MG 
on E.MGR = MG.EMPNO
where
E.DEPTNO = MG.DEPTNO;

-- Q10 --
select E.ENAME, E.JOB, E.SAL,
SG.GRADE from employee E
join SALGRADE SG ON E.SAL between minpay and maxpay
WHERE
E.DEPTNO in (10, 30)
and SG.GRADE <> 4 and
E.HIREDATE < '1982-12-31';
