-- https://www.hackerrank.com/challenges/the-blunder/problem
-- This can be done in 2 ways

-- Solution 1
selecy ceil(avg(Salary) - avg(replace(Salary, '0', ''))) from employees;

-- Solution 2
select ceil(avg(Salary) - avg(replace(cast(Salaray as char), '0', '')))
from employees;
