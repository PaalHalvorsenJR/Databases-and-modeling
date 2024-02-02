CREATE DATABASE eksamen_oppgave18;
USE eksamen_oppgave18;

-- Create the "Medlem" table
CREATE TABLE Medlem (
    MNr INT PRIMARY KEY,
    Fornavn VARCHAR(255) NOT NULL,
    Etternavn VARCHAR(255) NOT NULL,
    Tlf VARCHAR(8)
);

-- Create the "Hytte" table
CREATE TABLE Hytte (
    HNr INT PRIMARY KEY,
    Navn VARCHAR(255) NOT NULL,
    AntSenger INT,
    HytteType VARCHAR(255)
);

-- Create the "Tur" table
CREATE TABLE Tur (
    TNr INT PRIMARY KEY,
    Beskrivelse VARCHAR(255) NOT NULL,
    Pris DECIMAL(10,2) NOT NULL,
    StartDato DATE,
    StartHytte INT,
    FOREIGN KEY (StartHytte) REFERENCES Hytte(HNr)
);

-- Create the "Påmelding" table
CREATE TABLE Påmelding (
    TNr INT,
    MNr INT,
    PRIMARY KEY (TNr, MNr),
    FOREIGN KEY (TNr) REFERENCES Tur(TNr),
    FOREIGN KEY (MNr) REFERENCES Medlem(MNr)
);

-- Insert data into the "Medlem" table
INSERT INTO Medlem (MNr, Fornavn, Etternavn, Tlf)
VALUES (1, 'Ola', 'Hansen', '12345678'),
       (2, 'Kari', 'Mo', '87654321'),
       (3, 'Anette', 'Lien', '22334455'),
       (4, 'Johan', 'Asen', '88776655');

-- Insert data into the "Hytte" table
INSERT INTO Hytte (HNr, Navn, AntSenger, HytteType)
VALUES (1, 'Furubu', 25, 'Betjent'),
       (2, 'Blåsbortstua', 40, 'Selvbetjent'),
       (3, 'Steinbua', 10, 'Ubetjent');

-- Insert data into the "Tur" table
INSERT INTO Tur (TNr, Beskrivelse, Pris, StartDato, StartHytte)
VALUES (1, 'Krevende Topptur', 7500.00, '2018-04-27', 2),
       (2, 'Kort familietur', 4200.00, '2018-07-28', 1),
       (3, 'Brevandring', 9400.00, '2018-08-04', 2),
       (4, 'Klassisk fjelltur', 6500.00, '2018-08-11', 1);

-- Insert data into the "Påmelding" table
INSERT INTO Påmelding (TNr, MNr)
VALUES (1, 2),
       (1, 3),
       (2, 3),
       (3, 1),
       (4, 1),
       (4, 2),
       (4, 3);