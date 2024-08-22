USE a_university_schema;

SELECT 
    s.students_name AS "students_name",
    p.professors_name AS "professors_name",
	COUNT(c.courses_id) AS "common courses"
FROM grades g
JOIN students s ON g.grades_students_id = s.students_id
JOIN courses c ON g.grades_courses_id = c.courses_id
JOIN professors p ON c.courses_professors_id = p.professors_id
GROUP BY s.students_name, p.professors_name 
ORDER BY `Common courses` DESC
LIMIT 50;

