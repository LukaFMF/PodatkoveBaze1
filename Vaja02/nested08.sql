SELECT w1.continent,w1.name
FROM world AS w1
WHERE w1.name = (
	SELECT w2.name
	FROM world AS w2
	WHERE w1.continent = w2.continent
	ORDER BY w2.name ASC
	LIMIT 1
);