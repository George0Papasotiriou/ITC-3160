--18
SELECT
    empid,
    projno,
    rating
FROM
    assign
WHERE
    rating IS NULL
ORDER BY
    empid;