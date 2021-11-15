SELECT t.name,COALESCE(d.name,'None')
FROM teacher AS t LEFT JOIN dept AS d ON (t.dept = d.id);