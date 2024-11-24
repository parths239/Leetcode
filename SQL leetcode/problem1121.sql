-- # Write your MySQL query statement below
-- the formula creation is hard part
SELECT 
    query_name,
    ROUND(avg(rating/position),2) as quality,
    Round((sum(if(rating < 3,1,0))*100)/count(rating),2) as poor_query_percentage
FROM 
    queries as q
GROUP BY
    query_name
HAVING query_name IS NOT NULL;

