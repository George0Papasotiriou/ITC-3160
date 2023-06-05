--1
SELECT a.firstName || ' ' || a.lastName as fullName, b.departmentName
FROM Worker a, Dept b
WHERE b.departmentName = 'Research';
