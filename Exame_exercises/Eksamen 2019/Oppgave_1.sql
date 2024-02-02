CREATE TABLE ContainerType (
    TypeID INT PRIMARY KEY,
    TypeName VARCHAR(50) NOT NULL,
    MaxVekt INT NOT NULL,
    AntKubikk INT NOT NULL,
    DagPris INT NOT NULL
);

CREATE TABLE Container (
    CNr INT PRIMARY KEY,
    TypeID INT,
    CONSTRAINT fk_TypeID FOREIGN KEY (TypeID) REFERENCES ContainerType(TypeID)
);

CREATE TABLE Kunde (
    Tlf INT PRIMARY KEY,
    Adresse VARCHAR(50) NOT NULL
);

CREATE TABLE Oppdrag (
    ONr INT PRIMARY KEY,
    Tlf INT,
    CNr INT,
    FraDato DATE NOT NULL,
    TilDato DATE NOT NULL,
    CONSTRAINT fk_Tlf FOREIGN KEY (Tlf) REFERENCES Kunde(Tlf),
    CONSTRAINT fk_CNr FOREIGN KEY (CNr) REFERENCES Container(CNr)
);

INSERT INTO ContainerType (TypeID, TypeName, MaxVekt, AntKubikk, DagPris)
VALUES (1, 'Mini', 3000, 8, 750),
       (2, 'Stor åpen', 6000, 25, 1500),
       (3, 'Stor lukket', 7500, 20, 2000);

INSERT INTO Container (CNr, TypeID)
VALUES (1, 1),
       (2, 2),
       (3, 3),
       (4, 1),
       (5, 3);

INSERT INTO Kunde (Tlf, Adressse)
VALUES (11223344, 'Kongens gate 11'),
       (12341234, 'Jernbanealeen 27'),
       (88776655, 'Hansegata 3');

-- Disable foreign key constraint checks
SET FOREIGN_KEY_CHECKS = 0;

-- Insert data into the Oppdrag table
INSERT INTO Oppdrag (ONr, Tlf, CNr, FraDato, TilDato)
VALUES (1, 11223344, 1, '2019-12-15', '2019-12-17'),
       (2, 12341234, 3, '2019-12-15', '2019-12-17'),
       (3, 88776655, 4, '2019-12-17', '2019-12-19'),
       (4, 11223344, 2, '2019-11-18', '2019-12-19');

-- Re-enable foreign key constraint checks
SET FOREIGN_KEY_CHECKS = 1;

--Oppgave 1

-- a)
select * from ContainerType
where MaxVekt > 5000 and DagPris < 1800;

-- b)
select * from Oppdrag
where FraDato = '2019-12-17';

-- c)
select ContainerType.TypeID, ContainerType.TypeName, count(Container.TypeID) as Antall_Containere
from ContainerType 
left join Container on ContainerType.TypeID = Container.TypeID
group by Container.TypeID;

-- d)
CREATE TABLE Oppdrag (
    ONr INT PRIMARY KEY,
    Tlf INT,
    CNr INT,
    FraDato DATE NOT NULL,
    TilDato DATE NOT NULL,
    CONSTRAINT fk_Tlf FOREIGN KEY (Tlf) REFERENCES Kunde(Tlf),
    CONSTRAINT fk_CNr FOREIGN KEY (CNr) REFERENCES Container(CNr)
);

-- e)

Insert into Kunde (Tlf, Adressse)
VALUES(9061145, "flathaugaten 36");
select * from Kunde;

Insert into Oppdrag(ONr, Tlf, CNr, FraDato, TilDato)
Values(5,9061145,5,'2019-03-03', '2019-03-07'   );

-- f)

SELECT Kunde.Tlf, SUM(ContainerType.DagPris * DATEDIFF(Oppdrag.TilDato, Oppdrag.FraDato)) AS Totalsum
FROM Kunde
JOIN Oppdrag ON Oppdrag.Tlf = Kunde.Tlf
JOIN Container ON Container.CNr = Oppdrag.CNr
JOIN ContainerType ON ContainerType.TypeID = Container.TypeID
GROUP BY Kunde.Tlf;

-- VIKTIG Å TA TIL SEG

-- Yes, that's correct. When you write a query with multiple joins, you start from the table specified in the FROM clause and then join other tables one by one based on their relationships.

-- When joining tables, it's essential to follow the logical order of relationships between them. In your example, the relationships between the tables are as follows:

-- Kunde is related to Oppdrag through the Tlf column.
-- Oppdrag is related to Container through the CNr column.
-- Container is related to ContainerType through the Type column.
-- So, the correct query that follows these relationships is:
-- sql
-- Copy code
-- SELECT Kunde.Tlf, SUM(ContainerType.DagPris * DATEDIFF(Oppdrag.TilDato, Oppdrag.FraDato)) AS Totalsum
-- FROM Kunde
-- JOIN Oppdrag ON Oppdrag.Tlf = Kunde.Tlf
-- JOIN Container ON Container.CNr = Oppdrag.CNr
-- JOIN ContainerType ON ContainerType.TypeID = Container.Type
-- GROUP BY Kunde.Tlf;
-- By starting from the FROM clause and joining the tables in the proper order, you can ensure that the columns used in the ON conditions are available when they are needed.





























