use employee;

/* Question 1 */
SELECT * FROM employee WHERE hiredate < '1980-06-30'OR hiredate > '1981-12-31';

/* Question 2 */
SELECT ename FROM employee WHERE ename LIKE '_a%';

/* Question 3 */
SELECT ename FROM employee WHERE ename LIKE '_____';

/* Question 5 */
SELECT ename FROM employee WHERE job NOT IN ('salesman', 'clerk', 'analyst');

/* Question 6 */
SELECT ename, sal * 12  FROM employee ORDER BY sal DESC;