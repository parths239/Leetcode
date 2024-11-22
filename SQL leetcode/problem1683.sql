# Write your MySQL query statement below
SELECT tweet_id FROM Tweets
WHERE CHAR_LENGTH(content)>15;

-- or WHERE LENGTH(content)>15;