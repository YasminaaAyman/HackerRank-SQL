SELECT start_date, MIN(end_date)
FROM (
    SELECT start_date
    FROM projects
    WHERE start_date NOT IN (SELECT end_date FROM projects)
) q1,
(   
    SELECT end_date
    From projects
    WHERE end_date NOT IN (SELECT start_date FROM projects)
) q2
WHERE start_date < end_date
GROUP BY start_date
ORDER BY datediff(start_date, MIN(end_date)) DESC, start_date;
