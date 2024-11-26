# Write your MySQL query statement below

-- WITH CTE_rankTable AS 
-- (
--     SELECT
--         Salary,
--         RANK() OVER(ORDER BY Salary DESC) AS Salary_rank
--     FROM 
--         Employee
-- )
-- SELECT 
--     COALESCE(Salary, NULL) AS SecondHighestSalary
-- FROM 
--     CTE_rankTable
-- WHERE 
--     Salary_rank = 2;


SELECT
    (SELECT DISTINCT 
        Salary 
    FROM 
        Employee 
    ORDER BY
        salary DESC 
    LIMIT 1 offset 1) AS SecondHighestSalary;
