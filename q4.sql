--4
SELECT
    a.lastname,
    a.firstname,
    b.projno
FROM
    worker  a,
    project b
WHERE
    projno = 1041
ORDER BY
    a.lastname ASC;