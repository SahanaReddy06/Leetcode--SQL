SELECT 
    CASE                                                                 #it executes line by linw
        WHEN A + B <= C OR A + C <= B OR B + C <= A THEN 'Not A Triangle'
        WHEN A = B AND B = C THEN 'Equilateral'
        WHEN A = B OR B = C OR A = C THEN 'Isosceles'
        ELSE 'Scalene'
    END AS TYPE                                                         #type is colums name of output. case, end is a condition logic
FROM TRIANGLES;





# to form a triangle A + B > C
#A + C > B
#B + C > A  -> it should satisfy
#Then classify as:

#Equilateral: all three sides equal A = B AND B = C
#Isosceles: exactly two sides equal A = B OR B = C OR A = C

#Scalene: all sides different A != B AND B != C AND A != C
