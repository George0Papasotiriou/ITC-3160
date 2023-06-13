--8
SELECT
    a.firstname,
    a.lastname,
    b.rating
FROM
         worker a
    JOIN assign  b ON a.empid = b.empid
    JOIN project c ON b.projno = c.projno
    JOIN worker  d ON c.projmgrid = d.empid
WHERE
        d.firstname = 'Helen'
    AND d.lastname = 'Smith'
ORDER BY
    a.firstname,
    a.lastname;