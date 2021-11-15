SELECT t.name,d.name
FROM teacher AS t RIGHT JOIN dept AS d ON (t.dept = d.id);