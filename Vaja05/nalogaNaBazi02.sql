-- Naredite poizvedbo, ki bo prikazala vse pare cimrov. Izpisati je treba 
-- tabelo, ki ima 4 stolpce (ime1, priimek1, ime2, priimek2). Za vsaka dva 
-- učitelja, ki si delita pisarno, se mora v rezultatu pojaviti po ena vrstica.
SELECT u1.ime,u1.priimek,u2.ime,u2.priimek
FROM ucitelji AS u1 JOIN ucitelji u2 ON (u1.kabinet = u2.kabinet)
WHERE u1.id < u2.id;