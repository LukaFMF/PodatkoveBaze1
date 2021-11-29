CREATE TABLE zanr(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	naziv VARCHAR(20)
);

CREATE TABLE oznaka(
	kartica VARCHAR(10) PRIMARY KEY 
);

CREATE TABLE oseba(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	ime VARCHAR(25)
);

CREATE TABLE film(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	naslov VARCHAR(30)
);

CREATE TABLE pripada(
	zanr_id INTEGER REFERENCES zanr(id),
	film_id INTEGER REFERENCES film(id),
	PRIMARY KEY(zanr_id,film_id)
);

CREATE TABLE vloga(
	oseba_id INTEGER REFERENCES oseba(id),
	film_id INTEGER REFERENCES film(id),
	tip CHAR(1) CHECK(tip IN ('I','R')),
	mesto INTEGER,
	PRIMARY KEY(oseba_id,film_id,tip)
);
