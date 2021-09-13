SELECT h.hacker_id, h.name, COUNT(c.hacker_id) AS total
FROM hackers h
JOIN challenges c 
ON h.hacker_id = c.hacker_id
GROUP BY c.hacker_id, h.name

HAVING total = (SELECT COUNT(c1.challenge_id) AS total1
                  FROM challenges c1
                  GROUP BY c1.hacker_id
                  ORDER BY total1 DESC
                  LIMIT 1) OR
       total NOT IN (SELECT COUNT(c2.challenge_id)
                       FROM challenges c2
                       GROUP BY c2.hacker_id
                       HAVING c.hacker_id != c2.hacker_id)

ORDER BY total DESC, c.hacker_id;