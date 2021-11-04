SELECT m.id,m.title,m.yr
FROM movie AS m
WHERE m.title LIKE '%Star Trek%'
ORDER BY m.yr;