--9
CREATE VIEW projectworkers AS
    SELECT
        a.projno,
        a.projname,
        c.empid,
        c.firstname,
        c.lastname
    FROM
             project a
        JOIN assign b ON a.projno = b.projno
        JOIN worker c ON b.empid = c.empid;
        
SELECT
    *
FROM
    projectworkers;