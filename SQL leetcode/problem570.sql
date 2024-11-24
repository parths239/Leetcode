# Write your MySQL query statement below

SELECT 
    m.name
FROM 
    employee as e
JOIN 
    employee as m
ON
    m.id = e.managerId
GROUP BY 
    e.managerId
HAVING 
    count(e.managerId) >=5;

-- SELECT E1.name
-- FROM Employee E1
-- JOIN (
--     SELECT managerId, COUNT(*) AS directReports
--     FROM Employee
--     GROUP BY managerId
--     HAVING COUNT(*) >= 5
-- ) E2 ON E1.id = E2.managerId;

-- GOT ASKED THIS IN THE INTERVIEW