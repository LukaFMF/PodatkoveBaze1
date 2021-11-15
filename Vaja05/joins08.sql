SELECT d.name,COUNT(t.dept)
FROM teacher AS t RIGHT JOIN dept AS d ON (t.dept = d.id)
GROUP BY d.name;