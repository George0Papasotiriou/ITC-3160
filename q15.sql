--15
SELECT
    a.firstname AS employeefname,
    a.lastname  AS employeelname,
    b.firstname AS managerfname,
    b.lastname  AS managerlname
FROM
    worker a
    LEFT JOIN dept   c ON a.departmentid = c.departmentid
    LEFT JOIN worker b ON c.mgrid = b.empid
WHERE
    a.empid NOT IN (
        SELECT
            empid
        FROM
            assign
    );