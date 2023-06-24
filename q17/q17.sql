--17
-- Add the 'status' column to the 'Project' table
ALTER TABLE PROJECT ADD status VARCHAR2(20);

-- Update the 'status' field for specific projects
UPDATE PROJECT SET status = 'Active' WHERE projNo = 1001;
UPDATE PROJECT SET status = 'Completed' WHERE projNo = 1019;
UPDATE PROJECT SET status = 'Cancelled' WHERE projNo = 1040;

-- Retrieve a list of all 'active' projects
SELECT *
FROM PROJECT
WHERE status = 'Active';
