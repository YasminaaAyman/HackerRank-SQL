SELECT country.continent, FLOOR(avg(city.population))
FROM city
JOIN  country ON city.countrycode = country.code
GROUP by 1;