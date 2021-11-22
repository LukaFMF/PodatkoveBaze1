SELECT DISTINCT o.ime,o.priimek
FROM osebe AS o JOIN skupine AS s ON (o.id = s.učitelj)
WHERE s.tip = 'P';