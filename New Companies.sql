SELECT c.company_code, c.founder, COUNT(distinct e.lead_manager_code), 
    COUNT(distinct e.senior_manager_code), COUNT(distinct e.manager_code), 
    COUNT(distinct e.employee_code)
from company c
JOIN employee e ON e.company_code = c.company_code
GROUP BY c.company_code,c.founder
ORDER BY c.company_code;