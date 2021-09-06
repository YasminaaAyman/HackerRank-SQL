SELECT city, length(city) FROM STATION
ORDER BY length(city),city
LIMIT 1;

SELECT city, length(city) FROM STATION
ORDER BY length(city) DESC
LIMIT 1;
