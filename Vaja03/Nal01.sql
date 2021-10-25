-- Vrnite povprečno oceno filmov iz leta 2019
SELECT AVG(ocena) AS "povprecna ocena"
FROM film
WHERE leto = 2019;