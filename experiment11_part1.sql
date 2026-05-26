use employee;
set SQL_SAFE_UPDATES = 0;
-- Q1 --

delete E
  from employee E
  INNER JOIN
  department D on E.DEPTNO = D.DEPTNO
  where 
  E.HIREDATE < '1982-12-31'
  and D.LOCATION in ('New York', 'Chicago');
  
  -- Q2 --
  select E.ENAME, E.JOB,
  D.DNAME, D.LOCATION
  from employee E
  INNER JOIN
  DEPARTMENT D on E.DEPTNO = D.DEPTNO
  where E.JOB = 'Manager';
  
  -- Q4 --
  select ENAME, SAL from employee
  order by SAL desc limit 5;
  
  -- Q5 --
  SELECT ENAME, SAL from employee
  where SAL = (SELECT MAX(SAL) from employee);
  
  -- Q6 --
  select ENAME, SAL from employee
  where SAL =
  ( 
    (select MAX(SAL) from employee) +
    (select MIN(SAL) from employee)
) / 2;

-- Q7 --
select D.DNAME from employee E 
INNER JOIN DEPARTMENT D
on E.DEPTNO = D.DEPTNO
group by D.DNAME
having COUNT(*) >= 3;


