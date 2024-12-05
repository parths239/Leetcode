# Write your MySQL query statement below

SELECT 
    sell_date,
    count(DISTINCT product) as num_sold,
    GROUP_CONCAT(
        DISTINCT product
        ORDER BY product
        SEPARATOR ','
    ) as products
FROM 
    activities
GROUP BY 
    sell_date
ORDER BY 
    sell_date,product
