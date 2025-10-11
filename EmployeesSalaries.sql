SELECT name
FROM Employee
WHERE salary > 2000       -- replace 2000 with the desired salary threshold
  AND months < 12         -- replace 12 with the desired months threshold
ORDER BY employee_id ASC;
