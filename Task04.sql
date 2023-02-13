-- Write PL-SQL code to display the 22nd lowest salary from the rtidb_employee table
-- without using a self-join, dense_rank, rank, top, limit, rownum or fetch or offset in your query.
DECLARE
    S NUMBER := 0;
    CURSOR salaries IS SELECT salary
                       FROM ritdb_employee
                       ORDER BY salary ASC;
BEGIN
    FOR currentSalary IN salaries
        LOOP
            S := S + 1;
            IF S = 22 THEN
                DBMS_OUTPUT.PUT_LINE(currentSalary.salary);
            END IF;
        END LOOP;
END;