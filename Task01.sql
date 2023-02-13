-- Get an average salary of all the employees hired after 2012
SELECT ROUND(AVG(salary)) AS "Average Salary After 2012"
FROM ritdb_employee
WHERE hire_date > '12/31/2012';
