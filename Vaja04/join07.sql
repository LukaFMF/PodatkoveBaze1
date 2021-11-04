SELECT g.player
FROM game as gm 
	JOIN goal AS g 
	ON (gm.id = g.matchid)
WHERE gm.stadium = 'National Stadium, Warsaw';