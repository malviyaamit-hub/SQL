select * FROM HR.EMPLOYEES;


----- Count the no. of employees   (DOne)
select department_id, COUNT(*)
FROM hr.employees
GROUP BY department_id;
___ get the total count of employees


---2 Avg Salary by Employees (Done)

select department_id, AVG(SALARY) AS avg_salary FROM hr.employees GROUP BY department_id;

---- Get the total avg of all employees

----3 Find the minumum & Mamimum (Not done)
SELECT department_id, MAX(SALARY) AS MAX_SALARY, MIN(SALARY) AS MIN_SALARY 
FROM EMPLOYEES
GROUP BY department_id;

----4 Total Salary paid in each department (Done)
 
SELECT department_id, SUM(salary) AS total_salary
FROM hr.employees
GROUP BY department_id
ORDER BY total_salary
