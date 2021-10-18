SELECT name,CONCAT(ROUND(population/(
	SELECT population
	FROM world
	WHERE name = 'Germany'
)*100,0),'%') AS "percentage of Germany"
FROM world
WHERE continent = 'Europe';