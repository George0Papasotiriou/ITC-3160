--19
ALTER TABLE project ADD numemployeesassigned NUMBER(10);

UPDATE project
SET
    numemployeesassigned = (
        SELECT
            COUNT(empid)
        FROM
            assign
        WHERE
            assign.projno = project.projno
    );

SELECT
    *
FROM
    project;