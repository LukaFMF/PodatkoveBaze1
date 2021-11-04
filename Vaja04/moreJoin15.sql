SELECT a.name
FROM casting AS c
	JOIN actor AS a
	ON (c.actorid = a.id)
	JOIN movie AS m
	ON (c.movieid = m.id)
WHERE a.name <> 'Art Garfunkel' AND m.id IN (
	SELECT m.id
	FROM casting AS c
	JOIN actor AS a
	ON (c.actorid = a.id)
	JOIN movie AS m
	ON (c.movieid = m.id)
	WHERE a.name = 'Art Garfunkel'
);