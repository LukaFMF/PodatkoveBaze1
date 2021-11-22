-- Vrnite tabelo imen in priimkov vseh oseb, ki jim je ime Matija
SELECT ime,priimek
FROM osebe
WHERE ime = 'Matija';

-- Vrnite tabelo imen in priimkov vseh oseb, urejeno po priimku
SELECT ime,priimek
FROM osebe
ORDER BY priimek;

-- Vrnite imena vseh predmetov na praktični matematiki (smer: 1PrMa)
SELECT ime
FROM predmeti
WHERE smer = '1PrMa';

-- Vrnite vse podatke o skupinah z manj kot eno uro
SELECT *
FROM skupine
WHERE ure < 1;

-- Vrnite število vseh predmetov na posamezni smeri
SELECT smer,COUNT(*)
FROM predmeti
GROUP BY smer;

-- Vrnite imena tistih predmetov, ki se pojavljajo na več smereh
SELECT DISTINCT p1.ime
FROM predmeti AS p1
WHERE p1.ime IN (
	SELECT p2.ime
	FROM predmeti AS p2
	WHERE p1.id <> p2.id AND p1.smer <> p2.smer
);

-- Vrnite imena in vse pripadajoče smeri tistih predmetov, ki se pojavljajo na več smereh
SELECT p.ime,p.smer
FROM predmeti AS p
WHERE p.id IN (
	SELECT p1.id
	FROM predmeti AS p1 JOIN predmeti AS p2 ON (p1.ime = p2.ime)
	WHERE p1.smer <> p2.smer
);

-- Vrnite skupno število ur vsake osebe
SELECT o.*,IFNULL(SUM(s.ure),0) AS stevilo_ur
FROM osebe AS o LEFT JOIN skupine AS s ON (o.id = s.učitelj)
GROUP BY o.id,o.ime,o.priimek;

-- Vrnite imena in priimke vseh predavateljev,
-- torej tistih, ki imajo kakšno skupino tipa P
SELECT DISTINCT o.ime,o.priimek
FROM osebe AS o JOIN skupine AS s ON (o.id = s.učitelj)
WHERE s.tip = 'P';

-- Vrnite imena in priimke vseh predavateljev,
-- ki izvajajo tako predavanja (tip P) kot vaje (tipa V ali L)
SELECT DISTINCT o.ime,o.priimek
FROM osebe AS o JOIN skupine AS s1 
	ON (o.id = s1.učitelj AND s1.tip = 'P')
	JOIN skupine AS s2
	ON (o.id = s2.učitelj AND (s2.tip = 'V' OR s2.tip = 'L'));

-- Vrnite imena in smeri vseh predmetov, ki imajo kakšen seminar
SELECT DISTINCT p.smer,p.ime
FROM predmeti AS p JOIN dodelitve AS d ON (p.id = d.predmet)
	JOIN skupine AS s ON (d.skupina = s.id)
WHERE s.tip = 'S';
-- Vsem predmetom na smeri 2PeMa spremenite smer na PeMa
UPDATE predmeti
SET smer = 'PeMa'
WHERE smer = '2PeMa';

-- Izbrišite vse predmete, ki niso dodeljeni nobeni skupini
DELETE FROM predmeti
WHERE id NOT IN (
    SELECT predmet
    FROM dodelitve
);

-- Za vsak predmet, ki se pojavi tako na prvi kot drugi stopnji
-- (smer se začne z 1 oz. 2), dodajte nov predmet z istim imenom
-- in smerjo 0Mate (stolpca id ne nastavljajte, ker se bo samodejno
-- določil)
INSERT INTO predmeti(ime,smer)
SELECT DISTINCT p1.ime,'0Mate'
FROM predmeti AS p1 JOIN predmeti AS p2 
	ON (p1.ime = p2.ime AND p1.smer LIKE '1%' AND p2.smer LIKE '2%');

-- Za vsako smer izpišite število različnih oseb, ki na njej poučujejo
SELECT p.smer,COUNT(DISTINCT o.id) st_razlicnih_oseb
FROM predmeti AS p 
	JOIN dodelitve AS d ON (p.id = d.predmet)
	JOIN skupine AS s ON (d.skupina = s.id)
	JOIN osebe AS o ON (s.učitelj = o.id)
GROUP BY p.smer;

-- Vrnite pare ID-jev tistih oseb, ki sodelujejo pri vsaj dveh
-- predmetih (ne glede na tip skupine), pri čemer naj bo prvi ID
-- v paru manjši od drugega, pari pa naj se ne ponavljajo
SELECT DISTINCT s1.učitelj AS id1,s2.učitelj AS id2
FROM dodelitve AS d1
	JOIN skupine AS s1 ON (d1.skupina = s1.id)
	JOIN dodelitve AS d2 ON (d1.predmet = d2.predmet)
	JOIN skupine AS s2 ON (d2.skupina = s2.id)
WHERE s1.učitelj < s2.učitelj;

-- Za vsako osebo (izpišite jo z ID-jem, imenom in priimkom) vrnite
-- skupno število ur vaj (tako avditornih kot laboratorijskih),
-- pri čemer naj bo to enako 0, če oseba ne izvaja nobenih vaj
SELECT o.*,IFNULL((
	SELECT SUM(s.ure) 
	FROM skupine AS s
	WHERE o.id = učitelj AND (s.tip = 'V' OR s.tip = 'L')
),0) AS skupno_st_ur
FROM osebe AS o;

-- Vrnite ID-je, imena in smeri predmetov, za katere se izvaja
-- seminar, ne pa tudi avditorne ali laboratorijske vaje
SELECT DISTINCT p.*
FROM predmeti AS p 
	JOIN dodelitve AS d ON(d.predmet = p.id)
	JOIN skupine AS s1 ON(d.skupina = s1.id)
	JOIN skupine AS s2 ON(d.skupina = s2.id) 
WHERE s1.tip = 'S' AND NOT(s2.tip = 'V' OR s2.tip = 'L');

