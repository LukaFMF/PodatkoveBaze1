SELECT name,population
FROM world
WHERE population > (
	SELECT population
	FROM world
	WHERE name = 'Poland'
) AND population < (
	SELECT population
	FROM world
	WHERE name = 'Canada'
);