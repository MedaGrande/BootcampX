SELECT cohorts.name, avg(completed_at - started_at) as average_assistance_time
FROM cohorts 
JOIN students ON cohorts.start_date = students.start_date
JOIN assistance_requests ON students.id = student_id
GROUP by cohorts.name
ORDER BY average_assistance_time ASC;