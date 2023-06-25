--12
UPDATE assign
SET
    hoursassigned = 30
WHERE
        projno = 1019
    AND empid = 115;
    
SELECT
    *
FROM
    assign
WHERE
        projno = 1019
    AND empid = 115;