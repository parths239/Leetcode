# Write your MySQL query statement below
-- figured most of it out but got cooked for this
-- dense_rank() is the one

WITH CTE_Final AS
(SELECT
    departmentTable.name as Department, 
    employeeTable.name as name,
    employeeTable.salary as Salary,
    DENSE_RANK() OVER(PARTITION BY employeeTable.departmentId ORDER BY employeeTable.salary DESC) as Salary_rank_Dept
FROM 
    employee as employeeTable
JOIN 
    department as departmentTable
ON
    employeeTable.departmentId = departmentTable.id)


SELECT
    CTE_Final.department as Department, 
    CTE_Final.name as Employee, 
    CTE_Final.salary as Salary
FROM
    CTE_Final
WHERE
    Salary_rank_Dept<=3
ORDER BY 
    CTE_Final.Department,
    CTE_Final.Salary_rank_Dept DESC;
