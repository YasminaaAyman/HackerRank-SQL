SELECT DISTINCT city FROM STATION
WHERE city REGEXP '^[^AEIOU].*[^aeiou]$';