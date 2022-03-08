SELECT AVG(assistance_requests.created_at - assistance_requests.completed_at) as average_assistance_request_duration 
FROM assistance_requests







-- Average Assistance Time
-- We need to be able to see the current average time it takes to complete an assistance request.

-- Get the average time of an assistance request.

-- Select just a single row here and name it average_assistance_request_duration
-- In Postgres, we can subtract two timestamps to find the duration between them. (timestamp1 - timestamp2)
