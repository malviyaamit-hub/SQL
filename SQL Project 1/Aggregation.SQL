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

---- Get the  Salary dept wise

--5. Count the number of employees in each job role
-- finding the number of emp based on job roles (DONE)

SELECT JOB_ID, COUNT(*) as total_employees
FROM HR.EMPLOYEES GROUP BY JOB_ID;

--- Result Dept wise total employees ---

-- 6. Find the average salary for each job role (Done)

SELECT JOB_ID, avg(salary) as avg_salary
FROM HR.EMPLOYEES 
GROUP BY JOB_ID;

---Get the result from Dept wise avg salary 

-- 7. Find the maximum salary for each job role (DONE)

SELECT JOB_ID, MAX(SALARY) as MAX_SALARY
FROM HR.EMPLOYEES
GROUP BY JOB_ID;

---Get the result of MAX Salary of dept wise

-- 12. Find the number of employees in each manager's team
-- finding the number of emp based on manager_id (Done)

SELECT manager_id, count(*) as team_size
FROM HR.EMPLOYEES
WHERE manager_id is not null
GROUP BY manager_id;
---- get the result and with manager ID the total team size in Manager ID

---- 13. Find the highest salary for each manager (DONE)
SELECT manager_id, MAX(SALARY) as MAX_SALARY
FROM HR.EMPLOYEES
WHERE manager_id is not null
GROUP BY manager_id;

---- The result is highest salary in each managers ID

-- 14. Find the average salary for each manager's team
-- finding the average salary of emp based on manager_id  (Done)

SELECT manager_id, AVG(SALARY) as avg_salary
FROM HR.EMPLOYEES
where manager_id is not null
GROUP BY manager_id;
---- The result is Avg salary in each managers ID

