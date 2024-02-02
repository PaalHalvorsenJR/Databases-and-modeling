-- Oppgave 1
-- a)
select Beskrivelse, Pris, StartDato
 from Tur 
where Pris < 8000 and mounth(StartDato) = 7
order by Pris ASC, StartDato ASC;

-- b)
select Medlem.Fornavn, Medlem.Etternavn, Medlem.Tlf
from Medlem
inner join Påmelding on Påmelding.MNr = Medlem.MNr
inner join Tur on Tur.TNr = Påmelding.TNr
where Tur.StartHytte = 2;

-- c)
select Tur.TNr, Tur.Beskrivelse, Tur.StartDato, count(Påmelding.MNr) as AntallPåmeldte
from Tur
left join Påmelding on Tur.TNr = Påmelding.TNr
group By Tur.TNr, Tur.Beskrivelse, Tur.StartDato;

-- d)
INSERT INTO Hytte (HNr, Navn, AntSenger, HytteType)
VALUES (1, 'Furubu', 25, 'Betjent'),
       (2, 'Blåsbortstua', 40, 'Selvbetjent'),
       (3, 'Steinbua', 10, 'Ubetjent');

-- e)
Insert Into Medlem (MNr, Fornavn, Etternavn, Tlf)
VALUES(5, "Paal", "Halvorsen", 48060561)
select * from Medlem;


-- f)
select * 
from Medlem
left join Påmelding on Påmelding.MNr = Medlem.MNr
where Påmelding.Tnr is Null;




    

