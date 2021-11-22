DELETE FROM predmeti
WHERE id NOT IN (
    SELECT predmet
    FROM dodelitve
);