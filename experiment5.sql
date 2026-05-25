-- *Aggregate functions* --

use employee;

-- Experiment 5 --
/* Question 1 */
SELECT COUNT(*) AS total_employee FROM employee;

-- Q2 --
SELECT SUM(sal) AS total_salary FROM employee;

-- Q3 --
SELECT MAX(sal) AS max_salary FROM employee;

-- Q4 --
SELECT MIN(sal) AS min_salary FROM employee;

-- Q5 --
SELECT AVG(sal) AS avg_sal FROM employee;

-- Q6 --
SELECT MAX(sal) AS max_salary FROM employee WHERE job = 'clerk'; 

-- Q7 --
SELECT MAX(sal) AS max_salary FROM employee WHERE deptno = 20;

-- Q8 --
SELECT MIN(sal) AS min_salary FROM employee WHERE job = 'salesman';

-- Q9 --
SELECT AVG(sal) AS avg_salary FROM employee WHERE job = 'manager';

-- Q10 --
SELECT SUM(sal) AS total_salary FROM employee WHERE job = 'analyst' AND deptno = 40;

-- Q11 --
SELECT UPPER(ename) AS uppercasename FROM employee;

-- Q12 --
SELECT LOWER(ename) AS lowercasename FROM employee;

/* select right('ABCDEF', 3); --> returns the rightmost three elements only that is DEF */

-- Q13 --
SELECT CONCAT(
    UPPER(LEFT(ename, 1)), 
    LOWER(SUBSTRING(ename, 2))
) AS propercasename FROM employee;

-- Q14 -- (Returns the length of the provided string)
SELECT LENGTH('Dona') AS lengthofname;

-- Q15 --(Returns the length of all employee names)
SELECT ename, LENGTH(ename) AS namelength FROM employee;