--14 
SELECT projNo, COUNT(empID) as WorkersNo, SUM(hoursassigned) AS totalHours
FROM Assign 
GROUP BY projNo;
