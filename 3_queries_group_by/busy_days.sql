SELECT day as day, count(assignments.id) as total_assignments
FROM assignments
GROUP BY day
HAVING count(*) >= 10
ORDER BY day;