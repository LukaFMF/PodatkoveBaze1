SELECT p.smer,COUNT(DISTINCT o.id) st_razlicnih_oseb
FROM predmeti AS p 
	JOIN dodelitve AS d ON (p.id = d.predmet)
	JOIN skupine AS s ON (d.skupina = s.id)
	JOIN osebe AS o ON (s.učitelj = o.id)
GROUP BY p.smer;
