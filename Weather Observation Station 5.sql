-- https://www.hackerrank.com/challenges/weather-observation-station-5/problem
-- there are many ways to do this problem like: using limit and union all

SELECT CITY, LENGTH(CITY) 
FROM (SELECT CITY 
      FROM STATION 
      ORDER BY LENGTH(CITY), CITY ) 
WHERE ROWNUM = 1; 

SELECT CITY, LENGTH(CITY) 
FROM (SELECT CITY 
      FROM STATION 
      ORDER BY LENGTH(CITY) DESC) 
WHERE ROWNUM = 1;