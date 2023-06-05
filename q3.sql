--3
SELECT EmpID, firstName || ' ' || lastName as fullName, (salary/4) as threeMonthSalary  
FROM Worker;