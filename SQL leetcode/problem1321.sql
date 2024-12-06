-- # Write your MySQL query statement below
-- got cooked a bit here

SELECT 
    visited_on,
    (
        SELECT SUM(amount)
        FROM customer
        WHERE visited_on BETWEEN DATE_SUB(c.visited_on, INTERVAL 6 DAY) AND c.visited_on
    ) as amount,
    ROUND((
        SELECT SUM(amount)/7
        FROM customer
        WHERE visited_on BETWEEN DATE_SUB(c.visited_on, INTERVAL 6 DAY) AND c.visited_on
    ),2) as average_amount

FROM 
    customer as c
WHERE
    visited_on >= (
            SELECT DATE_ADD(MIN(visited_on), INTERVAL 6 DAY) 
            FROM customer    
        )
GROUP BY
    visited_on




-- SELECT
--     visited_on,
--     SUM(amount) OVER (order by visited_on range between interval 6 day preceding and current row) as amount,
--     Round(avg(amount) OVER (order by visited_on range between interval 6 day preceding and current row),2) as average_amount
-- FROM 
--     customer
-- LIMIT
--     100000
-- OFFSET 
--     6



    -- SELECT 
    --     visited_on 
    -- FROM 
    --     customer 
    -- WHERE 
    --     visited_on 
    -- BETWEEN 
    --     visited_on AND (visited_on + 5)