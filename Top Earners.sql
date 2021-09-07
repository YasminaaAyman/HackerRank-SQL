SELECT (salary*months) as earnings, COUNT(*) FROM EMPLOYEE 
GROUP By 1
ORDER BY earnings desc
LIMIT 1;