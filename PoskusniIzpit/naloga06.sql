SELECT DISTINCT p1.ime
FROM predmeti AS p1
WHERE p1.ime IN (
	SELECT p2.ime
	FROM predmeti AS p2
	WHERE p1.id <> p2.id AND p1.smer <> p2.smer
);