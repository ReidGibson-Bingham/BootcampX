SELECT AVG(assistance_requests.started_at - assistance_requests.created_at) AS average_wait_time
FROM assistance_requests

LIMIT 1;

-- SELECT avg(started_at-created_at) as average_wait_time
-- FROM assistance_requests;


-- Average Assistance Request Wait Time
-- We need to know the average amount of time that students are waiting for an assistance request. This is the duration between an assistance request being created, and it being started.

-- Calculate the average time it takes to start an assistance request.

-- Return just a single column here.
-- Expected Result: