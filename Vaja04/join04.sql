SELECT gm.team1,gm.team2,g.player
FROM game as gm 
	JOIN goal AS g 
	ON (gm.id = g.matchid)
WHERE g.player LIKE 'Mario %';