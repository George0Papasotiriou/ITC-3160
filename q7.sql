--7
SELECT a.firstName, a.lastName, b.departmentName
FROM Worker a
JOIN Dept b ON a.departmentID = b.departmentID
WHERE a.empId IN (
  SELECT empId
  FROM Assign
  WHERE projNo = 1025
);