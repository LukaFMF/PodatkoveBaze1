SELECT gm.stadium,COUNT(g.matchid)
FROM game as gm 
	JOIN goal AS g 
	ON (gm.id = g.matchid)
GROUP BY gm.stadium;