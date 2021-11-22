INSERT INTO predmeti(ime,smer)
SELECT DISTINCT p1.ime,'0Mate'
FROM predmeti AS p1 JOIN predmeti AS p2 
	ON (p1.ime = p2.ime AND p1.smer LIKE '1%' AND p2.smer LIKE '2%');