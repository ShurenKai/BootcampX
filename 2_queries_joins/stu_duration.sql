--  Attempt:
--  SELECT SUM(duration) as total_duration
--  FROM assignments RIGHT JOIN students ON student.start_date = student_start_date;

SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE students.name = 'Ibrahim Schimmel';