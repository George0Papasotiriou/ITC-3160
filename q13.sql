--13
SELECT a.projNo, a.empID, b.firstName, b.lastName
FROM ProjectWorkers a, Worker b, Project c
WHERE a.empID = b.empID AND a.projNo = c.projNo AND c.startDate >'2023-01-01';
