SELECT player,teamid,coach,gtime
FROM goal AS g 
JOIN eteam AS t 
ON (g.teamid = t.id) 
WHERE gtime <= 10;