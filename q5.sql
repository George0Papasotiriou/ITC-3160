--5 
SELECT a.firstName || ' ' || a.lastName as fullName, b.departmentName, a.salary
FROM Worker a, Dept b
WHERE b.departmentName = 'Accounting' AND a.salary = (SELECT min(salary) FROM Worker);
