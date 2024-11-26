# Write your MySQL query statement below
-- SELF JOIN hai
-- start with one big table and try to shorten it

SELECT 
    e.employee_id,
    e.name,
    COUNT(e2.employee_id) as reports_count,
    ROUND(avg(e2.age)) AS average_age
FROM 
    employees e
JOIN
    employees e2
ON 
    e.employee_id = e2.reports_to
GROUP BY 
    e.employee_id,
    e.name
ORDER BY 
    e.employee_id;