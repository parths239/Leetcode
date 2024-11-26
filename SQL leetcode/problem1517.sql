# Write your MySQL query statement below
-- i am never going to remember the syntax
SELECT
    user_id,
    name,
    mail
FROM 
    Users
WHERE
    mail REGEXP '^[A-Za-z][A-Za-z0-9_\.\-]*@leetcode(\\?com)?\\.com$'