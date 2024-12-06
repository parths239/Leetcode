SELECT 
    id,
    count(*) as num
FROM 
        (SELECT
            accepter_id as id
        FROM 
            RequestAccepted 

        UNION ALL 

        SELECT
            requester_id as id
        FROM 
            RequestAccepted ) as result
GROUP BY
    id
ORDER BY 
    num DESC
LIMIT 
    1