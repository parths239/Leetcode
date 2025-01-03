# Write your MySQL query statement below

SELECT
    user_id,
    CONCAT(UPPER(SUBSTR(name, 1, 1)),LOWER(SUBSTR(name, 2,12))) as name
FROM
    users
ORDER BY 
    user_id;