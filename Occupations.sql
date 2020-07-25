-- https://www.hackerrank.com/challenges/occupations/problem

-- Solution 1
set @d=0, @p=0, @s=0, @a=0;

select min(Doctor), min(Professor), min(Singer), min(Actor)
from(
  select case 
            when Occupation='Doctor' then (@d:=@d+1)
            when Occupation='Professor' then (@p:=@p+1)
            when Occupation='Singer' then (@s:=@s+1)
            when Occupation='Actor' then (@a:=@a+1) 
            end as Row,
        case when Occupation='Doctor' then Name end as Doctor,
        case when Occupation='Professor' then Name end as Professor,
        case when Occupation='Singer' then Name end as Singer,
        case when Occupation='Actor' then Name end as Actor
  from OCCUPATIONS
  order by Name
) as temp
group by Row;

-- Solution 2

SELECT D.Name, P.Name, S.Name, A.Name FROM ( SELECT @rownum:=@rownum+1 AS rownum, Name 
FROM (SELECT @rownum:=0) r, Occupations 
WHERE Occupation = 'Doctor' ORDER BY Name) AS D 
RIGHT JOIN (SELECT @rownumP:=@rownumP+1 AS rownumP, Name 
FROM (SELECT @rownumP:=0) r, Occupations 
WHERE Occupation = 'Professor' ORDER BY Name
) AS P ON D.rownum = P.rownumP LEFT JOIN (SELECT @rownumS:=@rownumS+1 AS rownumS, Name FROM (SELECT @rownumS:=0) r, Occupations WHERE Occupation = 'Singer' ORDER BY Name) AS S ON P.rownumP = S.rownumS LEFT JOIN (SELECT @rownumA:=@rownumA+1 AS rownumA, Name FROM (SELECT @rownumA:=0) r, Occupations WHERE Occupation = 'Actor' ORDER BY Name) AS A ON P.rownumP = A.rownumA;

