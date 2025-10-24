--Write your MySQL query statement

SELECT (
    SELECT DISTINCT salary      
    FROM Employee
    ORDER BY salary DESC            
    LIMIT 1 OFFSET 1                
) AS SecondHighestSalary;

--desc -high to low
--skips the first (highest) salary and gets the next one.


--or
SELECT MAX(salary) AS SecondHighestSalary
FROM Employee
WHERE salary < (SELECT MAX(salary) FROM Employee);


--or
SELECT salary AS SecondHighestSalary
FROM (
    SELECT DISTINCT salary
    FROM Employee
    ORDER BY salary DESC
    LIMIT 1 OFFSET 1
) AS Temp;
