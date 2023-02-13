-- Show employees' first and last names with the first and last name of a corresponding manager
SELECT e.employee_id, e.first_name, e.last_name, m.first_name, m.last_name, m.employee_id
FROM ritdb_employee e
         JOIN ritdb_manager m ON (e.manager = m.employee_id);
