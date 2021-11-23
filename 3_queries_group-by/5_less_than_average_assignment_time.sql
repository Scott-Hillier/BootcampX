SELECT students.name as student, SUM(assignment_submissions.duration)/COUNT(assignment_submissions.duration) as average_assignment_duration, SUM(assignment.duration)/COUNT(assignment.duration) as average_estimated_duration
FROM assignment_submissions
JOIN students ON student_id = students.id
JOIN assignments ON assignment_id = assignmen.id
WHERE student.end_date IS NULL
ORDER BY average_assignment_duration DESC;