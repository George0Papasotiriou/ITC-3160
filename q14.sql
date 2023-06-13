--14 
SELECT
    projno,
    COUNT(empid)       AS workersno,
    SUM(hoursassigned) AS totalhours
FROM
    assign
GROUP BY
    projno;