--3
SELECT
    empid,
    firstname
    || ' '
    || lastname    AS fullname,
    ( salary / 4 ) AS threeMonthSalary
FROM
    worker;