SELECT a.name
FROM casting AS c
	JOIN actor AS a
	ON (c.actorid = a.id)
	JOIN movie AS m
	ON (c.movieid = m.id)
WHERE c.ord = 1
GROUP BY a.id,a.name
HAVING COUNT(m.id) >= 15
ORDER BY a.name;