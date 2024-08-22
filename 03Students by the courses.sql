USE a_university_schema;

SELECT 
	c.courses_types,
	s.students_name
FROM 
	students s
JOIN 
	courses c ON c.courses_students_id = s.students_id
ORDER BY
	c.courses_types

