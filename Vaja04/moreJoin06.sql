SELECT a.name
FROM casting AS c
	JOIN actor AS a
	ON (c.actorid = a.id) 
WHERE c.movieid = 11768;