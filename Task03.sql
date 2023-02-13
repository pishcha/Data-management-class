-- Show details of the employee who has been with the firm the longest time
SELECT *
FROM ritdb_employee
WHERE hire_date = (SELECT MIN(hire_date) FROM ritdb_employee);

SELECT *
FROM (SELECT * FROM ritdb_employee ORDER BY hire_date)
WHERE ROWNUM = 1;
