SELECT gm.id,gm.mdate,COUNT(g.matchid) AS goals
FROM game as gm 
	JOIN goal AS g 
	ON (gm.id = g.matchid)
WHERE (gm.team1 = 'POL' OR gm.team2 = 'POL')
GROUP BY gm.id,gm.mdate;