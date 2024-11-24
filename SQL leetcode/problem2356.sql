# Write your MySQL query statement below

SELECT teacher_id, Count(Distinct subject_id) as cnt FROM Teacher
GROUP BY Teacher_id;