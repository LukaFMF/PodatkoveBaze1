SELECT o.*,IFNULL((
	SELECT SUM(s.ure) 
	FROM skupine AS s
	WHERE o.id = učitelj AND (s.tip = 'V' OR s.tip = 'L')
),0) AS skupno_st_ur
FROM osebe AS o;