USE employee;

-- Q1 --
SELECT E.empno, E.ename,
CASE E.deptno
WHEN 10 THEN 'research'
WHEN 20 THEN 'accounting'
WHEN 30 THEN 'sales'
WHEN 40 THEN 'operations'
END AS department_name
FROM employee E;

-- Q2 --
SELECT CURDATE() AS currentdate;  -- > returns today's date
SELECT DATEDIFF(CURDATE() , '2005-07-01') AS totaldays;

-- Q3 --
SELECT TIMESTAMPDIFF(MONTH, '2005-07-01', CURDATE()) AS totalmonth;

-- Q4 --
SELECT DATE_FORMAT('1997-08-15', '%D %M %Y') AS formatted_date;

-- Q5 and Q6 --
SELECT CONCAT(
    ename, ' has joined the company on ',
    DATE_FORMAT(hiredate,  '%D %M %Y')
) AS output FROM employee;

-- Q7 --
SELECT CURDATE();
SELECT DAYOFWEEK(CURDATE());
SELECT DATE_ADD('2026-05-25', INTERVAL(7 - DAYOFWEEK('2026-05-25')) DAY) AS next_saturday;

-- Q8 --
SELECT CURTIME() AS currentime;

-- Q9 --
SELECT DATE_SUB(CURDATE(), INTERVAL 3 MONTH) AS threemonthsago;

-- Q10 --
SELECT ename, hiredate FROM employee WHERE MONTH(hiredate) = 12;

-- Q11 --
SELECT  * FROM employee WHERE LEFT(YEAR(hiredate), 2) = RIGHT(sal, 2);

-- Q12 & 13 skip --

-- Q14 -- 
SELECT ename, hiredate FROM employee
WHERE DAY(hiredate) < 15;