SELECT m.title,COUNT(c.actorid) AS number_actors
FROM casting AS c
	JOIN movie AS m
	ON (c.movieid = m.id)
WHERE m.yr = 1978
GROUP BY m.id,m.title
ORDER BY number_actors DESC,m.title ASC;