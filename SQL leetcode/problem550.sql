# Write your MySQL query statement below
 -- big to small approach
 -- youtube video dekhna pada


SELECT 
    ROUND(count(DISTINCT player_id)/(SELECT count(distinct player_id) FROM activity),2) as fraction
FROM 
    Activity
WHERE (player_id, DATE_SUB(event_date, INTERVAL 1 DAY)) IN 
    (   SELECT 
        player_id, MIN(event_date) as first_login
        FROM 
        Activity
        GROUP BY player_id);