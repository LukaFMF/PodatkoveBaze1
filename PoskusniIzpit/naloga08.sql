SELECT o.*,IFNULL(SUM(s.ure),0) AS stevilo_ur
FROM osebe AS o LEFT JOIN skupine AS s ON (o.id = s.učitelj)
GROUP BY o.id,o.ime,o.priimek;