CREATE OR REPLACE TRIGGER update_numEmployeesAssigned
AFTER INSERT OR UPDATE OR DELETE ON Assign
FOR EACH STATEMENT
BEGIN
    -- Update numEmployeesAssigned for new assignments
    UPDATE Project p
    SET numEmployeesAssigned = numEmployeesAssigned + 
        (SELECT COUNT(*) FROM Assign a WHERE a.projNo = p.projNo)
    WHERE EXISTS (
        SELECT 1 FROM Assign a WHERE a.projNo = p.projNo
    );

    -- Update numEmployeesAssigned for deleted assignments
    UPDATE Project p
    SET numEmployeesAssigned = numEmployeesAssigned - 
        (SELECT COUNT(*) FROM Assign a WHERE a.projNo = p.projNo)
    WHERE EXISTS (
        SELECT 1 FROM Assign a WHERE a.projNo = p.projNo
    );
END;
/
