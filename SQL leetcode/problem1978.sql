# Write your MySQL query statement below

SELECT 
    e1.employee_id
FROM 
    employees as e1
LEFT JOIN
    employees as e2
ON
    e1.manager_id = e2.employee_id
WHERE
    e1.salary < 30000
AND
    e1.manager_id IS NOT NULL
AND 
    e2.name IS NULL
ORDER BY 
    e1.employee_id ASC;