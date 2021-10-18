SELECT name
FROM world
WHERE continent = 'Europe' AND gdp/population > (
	SELECT gdp/population
	FROM world
	WHERE name = 'United Kingdom'
);