--13
SELECT
    a.projNo,
    a.empId,
    b.firstName,
    b.lastName
FROM
    Assign a
    JOIN Worker b ON a.empId = b.empId
    JOIN Project c ON a.projNo = c.projNo
WHERE
    c.startDate > TO_DATE('2023-01-01', 'YYYY-MM-DD');

