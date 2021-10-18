SELECT name,continent
FROM world
WHERE continent IN (
	SELECT continent
	FROM world
	WHERE name = 'Australia' OR name = 'Argentina' 
) 
ORDER BY name;