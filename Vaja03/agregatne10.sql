SELECT winner
FROM nobel
GROUP BY winner
HAVING COUNT(*) > 1;