--20
CREATE OR REPLACE TRIGGER update_numEmployeesAssigned
FOR INSERT OR UPDATE OR DELETE ON Assign
COMPOUND TRIGGER

  -- Define a collection to store project numbers
  TYPE projNoList IS TABLE OF Assign.projNo%TYPE;
  projNos projNoList := projNoList();

  AFTER EACH ROW IS BEGIN
    -- Store the project number of the affected row
    projNos.EXTEND();
    projNos(projNos.COUNT) := :new.projNo;
  END AFTER EACH ROW;

  AFTER STATEMENT IS BEGIN
    -- Iterate through the project numbers and update the numEmployeesAssigned field
    FOR i IN 1..projNos.COUNT LOOP
      -- Calculate the number of employees
      DECLARE
        totalEmployees NUMBER;
      BEGIN
        SELECT COUNT(*) INTO totalEmployees
        FROM Assign
        WHERE projNo = projNos(i);

        -- Update numEmployeesAssigned field
        UPDATE Project
        SET numEmployeesAssigned = totalEmployees
        WHERE projNo = projNos(i);
      END;
    END LOOP;
    
    -- Clear the project number list
    projNos.DELETE;
  END AFTER STATEMENT;

END update_numEmployeesAssigned;
/


ALTER TABLE Project ADD numEmployeesAssigned NUMBER;

--For Testing Purposes
INSERT INTO ASSIGN Values(1005, 140, 5, 5);

SELECT * FROM ASSIGN;
SELECT * FROM PROJECT;
