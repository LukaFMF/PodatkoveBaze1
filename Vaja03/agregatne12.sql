SELECT yr,subject
FROM nobel
WHERE yr >= 2000
GROUP BY yr,subject
HAVING COUNT(*) = 3;