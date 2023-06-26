--20
/* To avoid the mutating triggers error */
CREATE OR REPLACE TRIGGER Update_numEmployeesAssigned
FOR INSERT OR UPDATE OR DELETE ON Assign
COMPOUND TRIGGER

/* We need to use the TYPE command to store the data of the table */
TYPE EmpIdTotal IS TABLE OF Assign.EmpId%TYPE;
EmpIdTotal EmpId := EmpId();


/* We need to somehow count the Number of employees (By ID probably) */
BEFORE EACH ROW IS

    EmpId_exists boolean := false;

Begin
    WHILE NOT EmpId_exists

LOOP
    EmpId_Exists := ((EmpIdTotal + 1) = :EmpId)
    
END LOOP

END BEOFRE EACH ROW;

/* After counting, we need to update the numEmployeesAssigned */
UPDATE Project
SET numEmployeesAssigned = EmpIdTotal

END Update_numEmployeesAssigned;
/


ALTER TABLE Project ADD numEmployeesAssigned NUMBER;

--For Testing Purposes
INSERT INTO ASSIGN Values(1005, 140, 5, 5);

SELECT * FROM ASSIGN;
SELECT * FROM PROJECT;
Select * FROM WORKER;
