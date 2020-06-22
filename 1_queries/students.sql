-- Get the names of all of the students from a single cohort.
SELECT id, name
  FROM students
WHERE cohort_id = 1
ORDER BY name;

-- Select the total number of students who were in the first 3 cohorts.
SELECT COUNT(id)
FROM students
WHERE cohort_id <= 3; -- also works: WHERE cohort_id IN (1,2,3);

--Get all of the students that don't have an email or phone number.
SELECT name, id, cohort_id
FROM students
WHERE email IS null OR phone IS null;

-- Get all of the students without a gmail.com or phone number.
SELECT name, id, email, cohort_id
FROM students
WHERE email NOT LIKE '%gmail.com'
OR phone IS null;

-- Get all of the students currently enrolled.
SELECT name, id, cohort_id
FROM students
WHERE end_date IS NULL
ORDER BY cohort_id;

-- Get all graduates without a linked Github account.
SELECT name, email, phone
FROM students
WHERE github IS NULL
AND end_date IS NOT NULL;

-- Get the student's name, student's start_date, cohort's name, and cohort's start_date.
-- Alias the column names to be more descriptive.
-- Order by the start date of the cohort.
SELECT students.name, cohorts.name, cohorts.start_date as cohort_start_date, students.start_date as student_start_date
FROM students
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.start_date != students.start_date
ORDER BY cohort_start_date;