-- https://www.hackerrank.com/challenges/weather-observation-station-19/problem

select round(sqrt(power((Max(Lat_n) - Min(Lat_N)),2) + 
                 power((max(long_w) - min(long_w)),2)
                 )
             ,4)
             from station;