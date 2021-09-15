WITH recursive a(id) 
AS 
(SELECT 2 
 UNION ALL 
 SELECT id+1 FROM a 
 WHERE id<1000)
SELECT group_concat(x separator '&') 
FROM 
    (SELECT a.id AS x,COUNT(*) AS y 
     FROM a 
     INNER JOIN a b ON a.id>=b.id 
     WHERE MOD(a.id,b.id)=0 
     GROUP BY a.id) AS newtable 
WHERE y<2 
ORDER BY x;