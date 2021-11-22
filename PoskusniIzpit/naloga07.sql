SELECT p.ime,p.smer
FROM predmeti AS p
WHERE p.id IN (
	SELECT p1.id
	FROM predmeti AS p1 JOIN predmeti AS p2 ON (p1.ime = p2.ime)
	WHERE p1.smer <> p2.smer
);