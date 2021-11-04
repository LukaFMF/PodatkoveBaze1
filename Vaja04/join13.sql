SELECT gm.mdate,gm.team1,(
	SELECT COUNT(g.matchid)
	FROM game as gm2 
		JOIN goal AS g 
		ON (gm2.id = g.matchid)
	WHERE g.teamid = gm.team1 AND gm2.id = gm.id
) AS score1,gm.team2,(
	SELECT COUNT(g.matchid)
	FROM game as gm3 
		JOIN goal AS g 
		ON (gm3.id = g.matchid)
	WHERE g.teamid = gm.team2 AND gm3.id = gm.id
) AS score2
FROM game AS gm
ORDER BY gm.mdate,gm.id,gm.team1,gm.team2;