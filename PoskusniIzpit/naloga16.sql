SELECT DISTINCT s1.učitelj AS id1,s2.učitelj AS id2
FROM dodelitve AS d1
	JOIN skupine AS s1 ON (d1.skupina = s1.id)
	JOIN dodelitve AS d2 ON (d1.predmet = d2.predmet)
	JOIN skupine AS s2 ON (d2.skupina = s2.id)
WHERE s1.učitelj < s2.učitelj;