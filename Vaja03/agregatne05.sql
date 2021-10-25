SELECT subject,MIN(yr)
FROM nobel
GROUP BY subject;