-- Vrnite oznake, ki se pojavijo pri vsaj 100 filmih. Prazno oznako (NULL) izpustite.
SELECT oznaka
FROM film
GROUP BY oznaka
HAVING count(oznaka) >= 100;