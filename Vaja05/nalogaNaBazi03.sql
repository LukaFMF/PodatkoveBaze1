-- Naredite poizvedbo, ki bo vrnila tabelo vseh trojic 
-- predmet-učitelj-asistent. Iz te tabele se bo dalo razbrati, pri kolikih 
-- predmetih sodelujeta nek učitelj in asistent.
SELECT p.ime,(u1.ime || ' ' ||u1.priimek) AS ime_predavatelja,(u2.ime || ' ' || u2.priimek) AS ime_asistenta
FROM izvajalci AS i1 
	 JOIN izvajalci AS i2 
	 ON (i1.idpredmeta = i2.idpredmeta)
	 JOIN ucitelji AS u1 ON(i1.iducitelja = u1.id)
	 JOIN ucitelji AS u2 ON(i2.iducitelja = u2.id)
	 JOIN predmeti AS p ON(p.id = i1.idpredmeta)
WHERE i1.vloga = 0 AND i2.vloga = 1;