-- SELECT cohorts.name, avg(assistance_requests.completed_at - assistance_requests.started_at) as average_assistance_time
-- FROM assistance_requests 
-- JOIN students ON students.id = assistance_requests.student_id
-- JOIN cohorts ON cohorts.id = students.cohort_id
-- WHERE avg(assistance_requests.completed_at - assistance_requests.started_at) > (SELECT MAX(assistance_requests.completed_at - assistance_requests.started_at
-- )FROM assistance_requests)
-- GROUP BY cohorts.name
-- ORDER BY average_assistance_time;

SELECT cohorts.name, avg(completed_at - started_at) as average_assistance_time
FROM assistance_requests 
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY average_assistance_time DESC
LIMIT 1;

-- Cohort With Longest Assistances
-- Get the cohort with the longest average duration of assistance requests.

-- The same requirements as the previous query, but only return the single row with the longest average.