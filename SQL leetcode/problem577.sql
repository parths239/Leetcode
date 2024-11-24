# Write your MySQL query statement below
-- Standard left join and filter at bonus

SELECT 
    employeeTable.name,
    bonusTable.bonus
FROM 
    Employee as employeeTable
LEFT JOIN 
    Bonus as bonusTable
ON
    employeeTable.empId = bonusTable.empId
WHERE
    bonusTable.bonus IS NULL or bonusTable.bonus< 1000;
