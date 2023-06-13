--13
SELECT
    a.projno,
    a.empid,
    b.firstname,
    b.lastname
FROM
    projectworkers a,
    worker         b,
    project        c
WHERE
        a.empid = b.empid
    AND a.projno = c.projno
    AND c.startdate > '2023-01-01';