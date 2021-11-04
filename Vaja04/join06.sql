SELECT gm.mdate,t.teamname 
FROM eteam AS t 
JOIN game AS gm 
ON (t.id = gm.team1)
WHERE t.coach = 'Fernando Santos';