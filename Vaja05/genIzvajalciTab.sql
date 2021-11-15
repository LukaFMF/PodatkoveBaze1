CREATE TABLE izvajalci(
	idpredmeta INTEGER,
	iducitelja INTEGER,
	vloga INTEGER,
	FOREIGN KEY(idpredmeta) REFERENCES predmeti(id),
	FOREIGN KEY(iducitelja) REFERENCES ucitelji(id),
	FOREIGN KEY(vloga) REFERENCES vloga(id),
	PRIMARY KEY(idpredmeta,iducitelja,vloga)
);