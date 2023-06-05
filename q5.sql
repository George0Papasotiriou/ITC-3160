--5 THERE'S THREE EMPLOYEES
SELECT a.firstName || ' ' || a.lastName as fullName, b.departmentName, a.salary
FROM Worker a, Dept b
WHERE b.departmentName = 'Accounting'
ORDER BY salary ASC
FETCH FIRST 3 ROW ONLY;