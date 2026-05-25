USE employee;

 -- Q1 --
 SELECT DATEDIFF(MAKEDATE(YEAR(CURDATE())+1, 1),
 CURDATE()) AS days_left;
 
 SELECT MAKEDATE(YEAR(CURDATE()), 143);
 
 -- Q2 --
 SELECT 
 MAX(sal) AS maximum_salary,
 MIN(sal) AS min_minimum,
 MAX(sal) - MIN(sal) AS sal_diff FROM employee;
 
 -- Q3 --
 SELECT ename, sal, comm FROM employee WHERE comm > sal * 0.25;
 
 -- Q4--
 SELECT CONCAT('$', FORMAT(sal, 2)) FROM employee;
 
 -- Q5 --
select JOB,
SUM(CASE when deptno = 10 then sal else 0 end) as dept10,
SUM(CASE when deptno = 20 then sal else 0 end) as dept20,
SUM(CASE when deptno = 30 then sal else 0 end) as dept30,
SUM(CASE when deptno = 40 then sal else 0 end) as dept40,
SUM(sal) as total_payment
from employee group by job;

-- Q6 --
select 
COUNT(ename) as total_employee_joined,
SUM(case when year(hiredate) = 1980 then 1 else 0 end) as year1980,
SUM(case when year(hiredate) = 1981 then 1 else 0 end) as year1981,
SUM(case when year(hiredate) = 1982 then 1 else 0 end) as year1982,
SUM(case when year(hiredate) = 1983 then 1 else 0 end) as year1983
from employee
group by deptno;






 