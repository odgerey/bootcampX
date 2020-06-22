SELECT id, name, email, cohort_id 
FROM students 
WHERE 
ORDER BY cohort_id;

SELECT count(id)
FROM students 
WHERE cohort_id = '1' AND '2' AND '3';