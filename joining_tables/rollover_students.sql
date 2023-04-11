SELECT students.name as students_name, 
cohorts.name as cohort_name, 
cohorts.start_date as cohort_start_date, 
students.start_date as student_start_date
FROM students 
INNER JOIN cohorts ON cohorts.id = cohort_id
WHERE students.start_date != cohorts.start_date
ORDER BY cohorts.start_date;