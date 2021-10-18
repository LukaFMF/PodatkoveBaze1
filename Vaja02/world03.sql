SELECT name,(gdp/population) AS "per capita GDP" 
FROM world
WHERE population >= 200000000;