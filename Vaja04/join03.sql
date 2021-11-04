SELECT g.player,g.teamid,gm.stadium,gm.mdate
FROM goal AS g 
	JOIN game AS gm 
	ON (g.matchid = gm.id)
WHERE g.teamid = 'GER';