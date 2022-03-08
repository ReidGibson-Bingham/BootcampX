SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN students ON students.id = student_id 
-- ^ this is joining students.id onto assignment_submissions.student_id
JOIN cohorts ON cohorts.id = cohort_id

WHERE cohorts.name = 'FEB12';


-- Get the total amount of time that all students from a specific cohort have spent on all assignments.

-- This should work for any cohort but use FEB12 for now.
-- Select only the total amount of time as a single column.
-- You can write as many JOIN statements as you need in a single query. Expected Result


-- SELECT sum(assignment_submissions.duration) as total_duration
-- FROM assignment_submissions
-- JOIN students.start_date ON students.cohort_id = cohort_id
-- WHERE cohort_id = 'FEB12';
