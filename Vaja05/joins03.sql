SELECT t.name,d.name
FROM teacher AS t LEFT JOIN dept AS d ON (t.dept = d.id);