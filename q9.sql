--9
CREATE VIEW ProjectWorkers AS
SELECT a.projNo, a.projName, c.empId, c.firstName, c.lastName
FROM Project a
JOIN Assign b ON a.projNo = b.projNo
JOIN Worker c ON b.empId = c.empId;