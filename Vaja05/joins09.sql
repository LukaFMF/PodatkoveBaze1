SELECT name,CASE WHEN dept IN (1,2) 
			THEN 'Sci' 
			ELSE 'Art' 
			END
FROM teacher;