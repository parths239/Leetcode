# Write your MySQL query statement below

-- big to small approach and figured out the formula

SELECT 
    r.contest_id,
    ROUND((count(u.user_id)/(SELECT count(user_id) FROM users))*100 , 2) as percentage
    
FROM
    Users as u
RIGHT JOIN
    Register as r
ON
    u.user_id = r.user_id
    
GROUP BY 
    r.contest_id
ORDER BY
    percentage DESC,
    r.contest_id ASC; 

