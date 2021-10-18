SELECT name,(population/1000000) AS "population in millions"
FROM world
WHERE continent = 'South America';