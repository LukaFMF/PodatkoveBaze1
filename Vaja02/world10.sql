SELECT name,ROUND(gdp/population,-3) AS "GDP per capita"
FROM world
WHERE gdp >= 1000000000000;