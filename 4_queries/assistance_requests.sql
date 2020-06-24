SELECT teachers.name, count(assistance_requests.id.*) as total_assistances
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
WHERE name = 'Waylon Boehm'
GROUP BY teachers.name;



SELECT students.name, count(assistance_requests.id.*) as total_assistances
FROM assistance_requests
JOIN students ON students.id = student_id
WHERE name = 'Elliot Dickinson'
GROUP BY students.name;



