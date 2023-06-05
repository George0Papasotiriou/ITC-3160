--4
SELECT a.Lastname, a.firstName, b.projno
FROM Worker a, Project b
WHERE projno = 1041
ORDER BY a.lastname ASC;