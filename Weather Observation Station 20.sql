SET @rowIndex := -1;
SELECT ROUND(AVG(lat_n), 4) FROM
(
SELECT @rowIndex := @rowIndex+1 AS rowIndex, lat_n FROM station ORDER BY lat_n
) AS n
WHERE n.rowIndex IN (FLOOR(@rowIndex / 2), CEIL(@rowIndex / 2));