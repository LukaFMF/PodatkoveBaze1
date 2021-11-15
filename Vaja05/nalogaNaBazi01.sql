-- Naredite poizvedbo, ki poišče najbolj zasedene kabinete.
SELECT kabinet,COUNT(*) AS stevilo_prof
FROM ucitelji
WHERE kabinet IS NOT NULL 
GROUP BY kabinet
ORDER BY stevilo_prof DESC;