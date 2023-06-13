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