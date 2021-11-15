INSERT INTO boxoffice 
VALUES (
    (SELECT id 
    FROM movies 
    WHERE title = 'Toy Story 4'),
    8.7,340000000,270000000
)