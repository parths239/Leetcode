# Write your MySQL query statement below

SELECT 
    signupTable.user_id,
    round(avg(CASE 
                WHEN 
                    confirmationTable.action = "confirmed" then 1 else 0 end)
        ,2) 
    AS confirmation_rate
FROM 
    signups as signupTable
LEFT JOIN 
    confirmations as confirmationTable
ON 
    signupTable.user_id = confirmationTable.user_id
GROUP BY signupTable.user_id;