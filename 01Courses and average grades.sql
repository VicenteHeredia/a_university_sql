USE a_university_schema;

SELECT 
	c.courses_types,
    AVG(g.grades_values) AS average_grade
FROM 
	grades g
JOIN 
	courses c ON g.grades_courses_id = c.courses_id
GROUP BY
	c.courses_types
ORDER BY
	average_grade ASC;

