SELECT DISTINCT o.ime,o.priimek
FROM osebe AS o JOIN skupine AS s1 
	ON (o.id = s1.učitelj AND s1.tip = 'P')
	JOIN skupine AS s2
	ON (o.id = s2.učitelj AND (s2.tip = 'V' OR s2.tip = 'L'));