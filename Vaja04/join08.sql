SELECT DISTINCT g.player
FROM game as gm 
	JOIN goal AS g 
	ON (gm.id = g.matchid)
WHERE g.teamid <> 'GER' AND (gm.team1 = 'GER' OR gm.team2 = 'GER');