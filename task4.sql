use LIBRARY;

-- 1.Apply aggregate functions 

-- Total salary of all employees
SELECT SUM(salary) AS Total_Salary FROM Employees;

-- Average salary
SELECT AVG(salary) AS Average_Salary FROM Employees;

-- Maximum salary
SELECT MAX(salary) AS Max_Salary FROM Employees;

-- Minimum salary
SELECT MIN(salary) AS Min_Salary FROM Employees;

-- 2.Use GROUP BY to categorize data

-- Total salary paid per department
SELECT department, SUM(salary) AS Total_Salary
FROM Employees
GROUP BY department;

-- Average salary by department
SELECT department, AVG(salary) AS Avg_Salary
FROM Employees
GROUP BY department;

-- 3. Filter groups using HAVING

-- Show departments with total salary greater than 50000
SELECT department, SUM(salary) AS Total_Salary
FROM Employees
GROUP BY department
HAVING SUM(salary) > 50000;

-- Departments with average salary below 60000
SELECT department, AVG(salary) AS Avg_Salary
FROM Employees
GROUP BY department
HAVING AVG(salary) < 60000;
