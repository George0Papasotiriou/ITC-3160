--1
SELECT
    a.firstname
    || ' '
    || a.lastname AS fullname,
    b.departmentname
FROM
    worker a,
    dept   b
WHERE
    b.departmentname = 'Research';


-- CONCAT function with multiple arguments is not supported in Oracle SQL Developer version 18.0.0
