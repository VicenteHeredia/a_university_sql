USE a_university_schema;

SELECT 
	s.students_name,
    MAX(g.grades_values) AS top_grade
FROM 
	grades g
JOIN 
	students s ON g.grades_students_id = s.students_id
GROUP BY
	s.students_id;

