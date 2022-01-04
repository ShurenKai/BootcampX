-- my answer
SELECT count(id) as total_assistances, name
FROM assistance_requests
WHERE name = 'Waylon Boehm';

-- toggled answer
SELECT count(assistance_requests.*) as total_assistances, teachers.name
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
WHERE name = 'Waylon Boehm'
GROUP BY teachers.name;