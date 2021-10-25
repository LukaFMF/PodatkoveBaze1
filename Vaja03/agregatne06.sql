SELECT subject,COUNT(winner)
FROM nobel
WHERE yr = 2000
GROUP BY subject;