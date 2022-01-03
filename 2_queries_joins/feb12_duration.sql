-- Attempt
-- SELECT SUM(assignment_submissions.duration) as total_duration
-- FROM assignment_submissions
-- JOIN cohorts AND students ON students.id = student_id AND cohort.start_date = student.start_date
-- WHERE cohorts.id = 'FEB12';


-- right answer:

SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = 'FEB12';