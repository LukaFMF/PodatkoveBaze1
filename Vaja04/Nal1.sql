-- Vrnite naslove filmov in imena glavnih igralcev. Rezultate uredite po imenu igralca in nato še po naslovu filma.
SELECT f.naslov,o.ime
FROM film AS f 
	JOIN vloga AS v
	ON (f.id = v.film)
	JOIN oseba AS o
	ON (v.oseba = o.id)
WHERE v.tip == 'I' AND v.mesto = 1
ORDER BY o.ime,f.naslov;
