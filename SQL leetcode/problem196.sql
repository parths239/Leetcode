# Write your MySQL query statement below
-- I didn't know
DELETE 
    p 
FROM 
    Person p, Person q 
where 
    p.Id>q.Id 
AND 
    q.Email=p.Email 