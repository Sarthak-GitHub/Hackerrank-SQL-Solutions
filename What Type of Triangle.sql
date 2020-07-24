-- https://www.hackerrank.com/challenges/what-type-of-triangle/problem

select case when a = b and b = c then "Equilateral"
when a + b <= c then "Not A Triangle"
when a + c <= b then "Not A Triangle"
when b + c <= a then "Not A Triangle"

when a = b and a <> c then "Isosceles"
when a = c and a <> b then "Isosceles"
when b = c and a <> b then "Isosceles"
else "Scalene" end from Triangles;
