# Write your MySQL query statement below

SELECT 
    projectTable.project_id,
    round(avg(employeeTable.experience_years) ,2) AS average_years
FROM
    project AS projectTable
JOIN
    employee AS employeeTable
ON 
    projectTable.employee_id = employeeTable.employee_id
GROUP BY
    projectTable.project_id;