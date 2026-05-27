use employee;

/* Question 1 */
select ename, job, sal from employee where deptno = 30 order by sal desc;

/* Question 2 */
select ename, job, deptno from employee where ename like 'a___n';

/* Question 3 */
select ename from employee where ename like 's%';

/* Question 4 */
select ename from employee where ename like '%s';

/* Question 5 */
select * from employee where deptno in(10, 20, 40) or job in('clerk', 'salesman', 'analyst');

/* Question 6 */
select empno, ename from employee where comm is not null and comm > 0;

/* Question 7 */
select empno, (sal + ifnull(comm, 0)) from employee;

/* Question 8 */
select empno, sal * 12 as annual_salary from employee;

/* Question 9 */
select * from employee where job = 'clerk' and sal > 3000;

/* Question 10 */
select * from employee where job in ('clerk', 'salesman', 'analyst') and sal > 3000;
