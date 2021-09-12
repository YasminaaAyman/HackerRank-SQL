SELECT w.id, p.age, w.coins_needed, w.power
FROM wands w
INNER JOIN wands_property p ON w.code = p.code
WHERE p.is_evil = 0 AND w.coins_needed = 
            (SELECT MIN(coins_needed)
             FROM wands AS w1
             INNER JOIN wands_property AS p1 ON w1.code = p1.code
             WHERE w1.power = w.power AND p1.age = p.age)
ORDER BY w.power DESC, p.age DESC;