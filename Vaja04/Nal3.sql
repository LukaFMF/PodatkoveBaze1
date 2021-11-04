-- Za vsak žanr (izpišite ga z imenom) izpišite število različnih igralcev in število različnih režiserjev, ki so sodelovali pri filmih tega žanra.
-- Rezultate uredite padajoče po vsoti števila igralcev in števila režiserjev (če se nekdo pojavi tako kot igralec kot režiser, se tukaj šteje dvakrat).
SELECT z1.naziv,(
	SELECT COUNT(DISTINCT v1.oseba)
	FROM film as f1
	JOIN vloga AS v1
	ON (f1.id = v1.film)
	JOIN pripada AS p1
	ON (f1.id = p1.film)
	WHERE v1.tip = 'I' AND p1.zanr = z1.id
) AS st_igralcev,(
	SELECT COUNT(DISTINCT v2.oseba)
	FROM film as f2
	JOIN vloga AS v2
	ON (f2.id = v2.film)
	JOIN pripada AS p2
	ON (f2.id = p2.film)
	WHERE v2.tip = 'R' AND p2.zanr = z1.id
) AS st_reziserjev
FROM zanr AS z1
GROUP BY z1.id,z1.naziv
ORDER BY st_igralcev + st_reziserjev DESC; 