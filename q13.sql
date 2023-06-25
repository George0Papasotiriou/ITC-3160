--13
SELECT
    a.projno,
    a.empid,
    b.firstname,
    b.lastname
FROM
    projectworkers a
    JOIN worker b ON a.empid = b.empid
    JOIN project c ON a.projno = c.projno
WHERE
    c.startdate > DATE '2023-01-01'
ORDER BY
    a.projno;


