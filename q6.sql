--6
SELECT * FROM Project
WHERE budget = (
  SELECT MIN(budget)
  FROM Project
);
