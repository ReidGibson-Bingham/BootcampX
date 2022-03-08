
SELECT assignments.id, assignments.name, assignments.day, assignments.chapter, COUNT(assistance_requests.id) as total_requests
FROM assistance_requests
JOIN assignments ON assignments.id = assistance_requests.assignment_id
GROUP BY assignments.id
ORDER BY COUNT(assistance_requests.id) DESC;

-- We need to know which assignments are causing the most assistance requests.

-- List each assignment with the total number of assistance requests with it.

-- Select the assignment's id, day, chapter, name and the total assistances.
-- Order by total assistances in order of most to least.