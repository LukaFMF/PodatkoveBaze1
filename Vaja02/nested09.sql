SELECT w1.name,w1.continent,w1.population
FROM world AS w1
WHERE (
	SELECT MAX(w2.population) <= 25000000
	FROM world AS w2
	WHERE w1.continent = w2.continent
);