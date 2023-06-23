--19
ALTER TABLE Project ADD numEmployeesAssigned NUMBER(10);

UPDATE Project
SET numEmployeesAssigned = (
    SELECT COUNT(empId)
    FROM Assign
    WHERE Assign.projNo = Project.projNo
);
