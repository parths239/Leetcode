# Write your MySQL query statement below

SELECT 
    p.product_name,
    SUM(o.unit) as unit
FROM 
    products as p
LEFT JOIN
    orders as o
ON 
    p.product_id = o.product_id
WHERE
    year(o.order_date) = '2020' and month(o.order_date) = '2'
GROUP BY
    p.product_id