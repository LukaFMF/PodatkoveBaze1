SELECT yr,COUNT(m.title) AS num_movies
FROM casting AS c
	JOIN actor AS a
	ON (c.actorid = a.id)
	JOIN movie AS m
	ON (c.movieid = m.id)
WHERE a.name = 'Rock Hudson'
GROUP BY yr
HAVING num_movies > 2;