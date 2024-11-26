# Write your MySQL query statement below

SELECT
    IF(count(num) = 1,  num, NULL) as num
FROM 
    MYNumbers
GROUP BY 
    num
ORDER BY 
    num DESC
LIMIT 1;