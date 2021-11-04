SELECT m.title
FROM casting AS c
	JOIN actor AS a
	ON (c.actorid = a.id)
	JOIN movie AS m
	ON (c.movieid = m.id)
WHERE a.name = 'Harrison Ford';