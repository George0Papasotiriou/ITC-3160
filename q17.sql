--17
ALTER TABLE PROJECT ADD status VARCHAR2(20);

UPDATE PROJECT SET status = 'Active' WHERE projNo = 1001;
UPDATE PROJECT SET status = 'Completed' WHERE projNo = 1019;
UPDATE PROJECT SET status = 'Cancelled' WHERE projNo = 1040;

SELECT *
FROM PROJECT
WHERE status = 'Active';
