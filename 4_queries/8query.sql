SELECT avg (total_duration) as average_total_duration
FROM (
  SELECT cohorts.name as cohort, sum(assistance_requests.completed_at-assistance_requests.started_at) as total_duration
  FROM assistance_requests
  JOIN students ON students.id = assistance_requests.student_id
  JOIN cohorts on cohorts.id = students.cohort_id
  GROUP BY cohorts.name
  ORDER BY total_duration
) as total_durations;

-- SELECT cohorts.name as cohort, avg(assistance_requests.completed_at - assistance_requests.created_at) as total_duration
-- FROM assistance_requests
-- JOIN students ON students.id = assistance_requests.student_id
-- JOIN cohorts ON cohorts.id = students.cohort_id
-- GROUP BY cohorts.name
-- ORDER BY total_duration
-- LIMIT 1;

-- Cohort Average Assistance Duration

-- We also need to know the average total amount of time being spent on an assistance request for each cohort. This is just the average of the total_duration column from the previous query.

-- Calculate the average total duration of assistance requests for each cohort.

-- Use the previous query as a sub query to determine the duration per cohort.
-- Return a single row 