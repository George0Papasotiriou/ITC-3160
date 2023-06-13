--5 
SELECT
    a.firstname
    || ' '
    || a.lastname AS fullname,
    b.departmentname,
    a.salary
FROM
    worker a,
    dept   b
WHERE
        b.departmentname = 'Accounting'
    AND a.salary = (
        SELECT
            MIN(salary)
        FROM
            worker
    );