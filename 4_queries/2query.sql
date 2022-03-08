-- SELECT teachers.name as teacher, students.name as student, COUNT(assistance_requests.completed_at - assistance_requests.started_at) as assistance_request_duration
-- FROM assistance_requests
-- JOIN teachers on teachers.id = teacher_id
-- JOIN students on students.id = student_id
-- GROUP BY teachers.name

-- VVV lighthouse version



SELECT teachers.name as teacher, students.name as student, assignments.name as assignment, (completed_at-started_at) as duration
FROM assistance_requests
JOIN teachers ON teachers.id = assistance_requests.teacher_id
JOIN students ON students.id = assistance_requests.student_id
JOIN assignments ON assignments.id = assistance_requests.assignment_id
ORDER BY duration;


-- i misread the instructions, i thought there we were comparing the assistance request start and finish times, not the assignment start and finish times






-- Assistance Requests Data

-- Each assistance request is related to a bunch of data like a teacher, student, assignment, and more. We want to be able to see all important data about an assistance request.

-- Get important data about each assistance request.

-- Select the teacher's name, student's name, assignment's name, and the duration of each assistance request.
-- Subtract completed_at by started_at to find the duration.
-- Order by the duration of the request.
-- Expected Result: