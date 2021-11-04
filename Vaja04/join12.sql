SELECT gm.id,gm.mdate,COUNT(g.matchid) AS goals
FROM game as gm 
	JOIN goal AS g 
	ON (gm.id = g.matchid)
WHERE g.teamid = 'GER' AND gm.id IN (
	-- games where GER scored
	SELECT DISTINCT matchid
	FROM goal
	WHERE teamid = 'GER'
) 
GROUP BY gm.id,gm.mdate;