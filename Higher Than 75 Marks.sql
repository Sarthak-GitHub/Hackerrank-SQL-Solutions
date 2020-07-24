-- https://www.hackerrank.com/challenges/more-than-75-marks/problem

SELECT Name
FROM Students
WHERE Marks > 75
ORDER BY RIGHT(Name, 3), Id;