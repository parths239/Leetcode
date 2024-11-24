# Write your MySQL query statement below

SELECT 
    studentsTable.student_id,
    studentsTable.student_name,
    subjectsTable.subject_name,
    count(examinationsTable.subject_name) as attended_exams
FROM 
    Students as studentsTable
CROSS JOIN 
    Subjects as subjectsTable
LEFT JOIN 
    Examinations as examinationsTable
ON 
    studentsTable.student_id = examinationsTable.student_id
AND 
    subjectsTable.subject_name = examinationsTable.subject_name
GROUP BY 
    examinationsTable.student_id,
    studentsTable.student_name,
    subjectsTable.subject_name
ORDER BY
    studentsTable.student_id,
    studentsTable.student_name,
    subjectsTable.subject_name;