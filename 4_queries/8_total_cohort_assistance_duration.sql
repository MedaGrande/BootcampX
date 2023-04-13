SELECT cohorts.name as cohort, SUM(completed_at - started_at) as total_duration
FROM cohorts 
JOIN students ON cohorts.start_date = students.start_date
JOIN assistance_requests ON students.id = student_id
GROUP by cohorts.name
ORDER BY total_duration ASC;