SELECT COUNT(assistance_requests.id) as total_assistance_requests, teachers.name as teacher
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
GROUP BY teachers.name;




-- Get the total number of assistance_requests for a teacher.

-- Select the teacher's name and the total assistance requests.
-- Since this query needs to work with any specific teacher name, use 'Waylon Boehm' for the teacher's name here.