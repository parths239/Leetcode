# Write your MySQL query statement below

SELECT person_name FROM

(SELECT
    person_name,
    SUM(weight) OVER(order by turn) as Total_weight
FROM    
    Queue) as first

WHERE 
    Total_weight <= 1000
ORDER BY
    Total_weight DESC
LIMIT 1