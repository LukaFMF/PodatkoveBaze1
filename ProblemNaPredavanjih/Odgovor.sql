-- Vrni prvih pet tistih igralcev in stevilo filmov, v katerih so imeli v 
-- istem filmu vlogo igralca in reziserja hkrati, najveckrat 

SELECT o.ime,COUNT(*) AS st_filmov
FROM vloga AS v1 
	INNER JOIN vloga AS v2 
	ON (v1.oseba = v2.oseba AND v1.film = v2.film AND v1.tip = 'R' AND v2.tip = 'I') 
	INNER JOIN oseba AS o 
	ON (o.id = v1.oseba)
GROUP BY o.ime
ORDER BY st_filmov DESC
LIMIT 5;