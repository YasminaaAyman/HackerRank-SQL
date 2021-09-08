set @r1=0, @r2=0, @r3=0, @r4=0;
SELECT min(Doctor), min(Professor), min(Singer), min(Actor)
FROM(
  SELECT CASE WHEN occupation='Doctor' THEN (@r1:=@r1+1)
            WHEN occupation='Professor' THEN (@r2:=@r2+1)
            WHEN occupation='Singer' THEN (@r3:=@r3+1)
            WHEN occupation='Actor' THEN (@r4:=@r4+1) end as RowNumber,
    CASE WHEN occupation='Doctor' THEN Name END AS Doctor,
    CASE WHEN occupation='Professor' THEN Name END AS Professor,
    CASE WHEN occupation='Singer' THEN Name END AS Singer,
    CASE WHEN occupation='Actor' THEN Name END AS Actor
  FROM OCCUPATIONS
  ORDER BY Name
) Temp
GROUP BY RowNumber