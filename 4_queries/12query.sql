SELECT teachers.name as teacher, cohorts.name as cohort,  COUNT(assistance_requests.id) as total_instances
FROM assistance_requests
JOIN teachers ON teachers.id = assistance_requests.teacher_id
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = students.cohort_id
WHERE cohorts.name = 'JUL02'
GROUP BY teachers.name, cohorts.name
ORDER BY teachers.name

-- Name of Teachers and Number of Assistances
-- We need to know which teachers actually assisted students during any cohort, and how many assistances they did for that cohort.

-- Perform the same query as before, but include the number of assistances as well.

-- Expected Result:

