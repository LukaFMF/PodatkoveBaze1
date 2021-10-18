SELECT continent,name,area
FROM world AS w1
WHERE area >= ALL (
	SELECT area
	FROM world AS w2
	WHERE w1.continent = w2.continent
);