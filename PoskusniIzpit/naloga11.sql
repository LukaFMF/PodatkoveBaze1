SELECT DISTINCT p.smer,p.ime
FROM predmeti AS p JOIN dodelitve AS d ON (p.id = d.predmet)
	JOIN skupine AS s ON (d.skupina = s.id)
WHERE s.tip = 'S';