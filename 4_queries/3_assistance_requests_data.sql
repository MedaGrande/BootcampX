SELECT teachers.name as teacher, students.name as student, 
assignments.name as assignment, (completed_at - started_at) as duration
FROM teachers 
JOIN assistance_requests ON teachers.id = teacher_id
JOIN students ON student_id = students.id
JOIN assignments ON assignments.id = assignment_id
WHERE assignments.name IS NOT NULL
ORDER BY duration; 