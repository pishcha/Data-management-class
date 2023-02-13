-- Display the details of each employee along with the number of years of experience the employee
-- has working in the firm (i.e. work experience at the firm rounded to nearest whole number).

SELECT employee_id,
       first_name,
       last_name,
       hire_date                                            AS "HiredOn",
       salary,
       ROUND(((DATE '2022-10-13' - hire_date) / 365.24), 0) AS "Expirience"
FROM ritdb_employee
ORDER BY employee_id;
