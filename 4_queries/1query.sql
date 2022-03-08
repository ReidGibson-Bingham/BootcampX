SELECT students.name as student, COUNT(assistance_requests.id) as assistance_requests
FROM assistance_requests
JOIN students ON students.id = assistance_requests.student_id
WHERE students.name = 'Elliot Dickinson'
GROUP by students.name;


-- V lighthouse version
-- SELECT count(assistance_requests.*) as total_assistances, students.name
-- FROM assistance_requests
-- JOIN students ON students.id = student_id
-- WHERE name = 'Elliot Dickinson'
-- GROUP BY students.name;




-- We need to be able to see how many assistance requests any student has requested.

-- Get the total number of assistance_requests for a student.

-- Select the student's name and the total assistance requests.
-- Since this query needs to work with any specific student name, use 'Elliot Dickinson' for the student's name here.