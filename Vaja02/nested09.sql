SELECT name,continent,population
FROM world
WHERE continent IN (
	SELECT w1.continent
	FROM world AS w1
	WHERE (
		SELECT MAX(population) <= 250000000
		FROM world AS w2
		WHERE w1.continent = w2.continent
	)
);