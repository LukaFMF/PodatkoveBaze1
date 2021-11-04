SELECT m.title,a.name
FROM casting AS c
	JOIN actor AS a
	ON (c.actorid = a.id)
	JOIN movie AS m
	ON (c.movieid = m.id)
WHERE m.yr = 1962 AND c.ord = 1;