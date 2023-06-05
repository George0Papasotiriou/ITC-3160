--15
SELECT a.firstname AS employeeFName, a.lastName AS employeeLName, b.firstName AS managerFName, b.lastName AS managerLName
FROM Worker a
LEFT JOIN Dept c ON a.departmentID = c.departmentID
LEFT JOIN Worker b ON c.mgrId = b.empId
WHERE a.empId NOT IN (SELECT empId FROM Assign);
