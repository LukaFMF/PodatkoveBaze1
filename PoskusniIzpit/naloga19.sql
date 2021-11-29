SELECT DISTINCT p.*
FROM predmeti AS p 
	JOIN dodelitve AS d ON(d.predmet = p.id)
	JOIN skupine AS s1 ON(d.skupina = s1.id)
	JOIN skupine AS s2 ON(d.skupina = s2.id) 
WHERE s1.tip = 'S' AND NOT(s2.tip = 'V' OR s2.tip = 'L');
