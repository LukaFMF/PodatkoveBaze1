SELECT name,ROUND(population/1000000,2) AS "population in millions",ROUND(gdp/1000000000,2) AS "GDP in billions"
FROM world
WHERE continent = 'South America';