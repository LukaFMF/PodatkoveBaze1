SELECT w3.name,w3.continent
FROM (
	-- largest country on each continent 
	SELECT w1.name,w1.continent,w1.population
	FROM world AS w1
	WHERE population = (
		SELECT MAX(population)
		FROM world AS w2
		WHERE w1.continent = w2.continent
	)
) AS w3
WHERE w3.population > (
	SELECT MAX(w4.population)*3
	FROM world AS w4
	where w3.continent = w4.continent AND w3.name <> w4.name
);