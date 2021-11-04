SELECT t.teamname,COUNT(g.matchid) AS goals
FROM eteam as t 
	JOIN goal AS g 
	ON (t.id = g.teamid)
GROUP BY t.teamname;
