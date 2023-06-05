--8
SELECT a.firstname, a.lastname, b.rating
FROM Worker a
JOIN Assign b ON a.empID = b.empID
JOIN Project c ON b.projno = c.projno
JOIN Worker d ON c.projMgrID = d.empID
WHERE d.FirstName = 'Helen' AND d.lastname = 'Smith'
ORDER BY a.firstname, a.lastname;