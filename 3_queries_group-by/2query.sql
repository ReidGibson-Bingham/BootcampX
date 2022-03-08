SELECT cohorts.name as cohort_name, count(students.*) AS student_count 
FROM cohorts
JOIN students ON cohorts.id = cohort_id
GROUP BY cohort_name 
HAVING count(students.*) >= 18
ORDER BY student_count;

-- SELECT * FROM cohorts
-- FULL OUTER JOIN students
-- ON cohorts.id = students.id




-- SELECT * FROM TableA
-- FULL OUTER JOIN TableB
-- ON TableA.name = TableB.name

-- SELECT * FROM TableA
-- FULL OUTER JOIN TableB
-- ON TableA.name = TableB.name
-- WHERE TableA.id IS null
-- OR TableB.id IS null





-- Get all cohorts with 18 or more students.

-- Select the cohort name and the total students.
-- Order by total students from smallest to greatest.