/*
Enter your query here.
*/
SELECT CEIL(
    AVG(SALARY)-AVG(CAST(REPLACE(SALARY,'0','') AS UNSIGNED))
)
FROM EMPLOYEES

/*
REPLACE(salary, '0', '') → removes zeros for Samantha’s miscalculation
CAST(... AS UNSIGNED) → converts the string back to a number
AVG(...) → calculates both averages
Subtract miscalculated average from actual average → the error
CEIL(...) → rounds the error up to the nearest integer



FLOOR()	Round down	FLOOR(4.9) → 4
CEIL()	Round up	CEIL(4.1) → 5
ROUND()	Round nearest	ROUND(4.5) → 5
CAST()	Change data type	CAST('123' AS UNSIGNED) → 123
*/
