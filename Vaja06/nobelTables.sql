CREATE TABLE nagrajenec(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	tip CHAR(3) CHECK(tip IN ('OSE','ORG')),
	datum_roj DATE,
	drzava VARCHAR(20)
);

CREATE TABLE nagrada(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	ime VARCHAR(25) NOT NULL,
	ustanovitev DATE,
	podeljevalec VARCHAR(25)
);

CREATE TABLE dobil(
	nagrajenec_id INTEGER REFERENCES nagrajenec(id),
	nagrada_id INTEGER REFERENCES nagrada(id),
	leto INTEGER,
	PRIMARY KEY (nagrajenec_id,nagrada_id)
);
