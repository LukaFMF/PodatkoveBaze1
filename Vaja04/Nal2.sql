-- Za vsakega režiserja (izpišite ga z IDjem in imenom) izpišite skupno dolžino filmov, ki jih je režiral (brez igranja). Rezultate uredite po imenu režiserja.
SELECT o.id,o.ime,SUM(f.dolzina) AS "skupna dolzina filmov"
FROM oseba AS o 
	JOIN vloga AS v
	ON (o.id = v.oseba)
	JOIN film AS f
	ON (v.film = f.id)
WHERE v.tip = 'R'
GROUP BY o.id,o.ime
ORDER BY o.ime;