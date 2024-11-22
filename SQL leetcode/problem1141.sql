# Write your MySQL query statement below

SELECT activity_date AS day, count(DISTINCT user_id) AS active_users FROM Activity
WHERE activity_date BETWEEN '2019-06-28' AND '2019-07-27 23:59:59' 
GROUP BY activity_date;