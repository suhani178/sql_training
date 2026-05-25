-- Experiment-7 ---> Q7
-- to return LAST SUNDAY of a month -- 
select 
date_sub(
last_day(curdate()),
interval(dayofweek(last_day(curdate()))-1)
day
) last_sunday;

-- Q8 --
use employee;
select deptno,
 count(*) as TOTAL_EMPLOYEE
from employee
group by deptno;

-- Q9 --
select job,
 count(*) as TOTAL_EMPLOYEE
from employee
GROUP BY jobp;

-- Q10 --
use employee;
select deptno,                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
sum(sal) as TOTAL_SALARY
from employee
group by deptno;
