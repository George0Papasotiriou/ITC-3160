--16
SELECT projNo, projName, startDate FROM Project WHERE startDate IN ( SELECT startDate FROM Project GROUP BY startDate HAVING COUNT(*) > 1) ORDER BY startDate;
