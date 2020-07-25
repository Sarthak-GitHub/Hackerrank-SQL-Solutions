-- https://www.hackerrank.com/challenges/weather-observation-station-20/problem

select round(s.lat_n,4) from station as s  
where (select round(count(s.id)/2)-1 from station) = 
(select count(s1.id) from station as s1 where s1.lat_n > s.lat_n);