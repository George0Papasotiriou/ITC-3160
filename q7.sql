--7
SELECT
    a.firstname,
    a.lastname,
    b.departmentname
FROM
         worker a
    JOIN dept b ON a.departmentid = b.departmentid
WHERE
    a.empid IN (
        SELECT
            empid
        FROM
            assign
        WHERE
            projno = 1025
    );