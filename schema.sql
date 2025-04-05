-- cree la base de donne 'tournoi'
CREATE DATABASE tournoi;
-- utiliser la base de donne  'tournoi'
USE tournoi;
-- ajouter les tableaux nécessaires
CREATE TABLE Tournoi(
idTournoi INT PRIMARY KEY AUTO_INCREMENT,
nom VARCHAR(50) NOT NULL,
annee INT 
);

CREATE TABLE Wilaya(
idWilaya INT PRIMARY KEY AUTO_INCREMENT,
nom VARCHAR(50)
);

CREATE TABLE Lycee(
idLycee INT PRIMARY KEY  AUTO_INCREMENT,
nom VARCHAR(50),
-- foreign key
idWilaya  INT,
FOREIGN KEY (idWilaya) REFERENCES Wilaya(idWilaya)
);

CREATE TABLE Eleve (
idEleve INT PRIMARY KEY AUTO_INCREMENT,
nom VARCHAR(50),
prenom VARCHAR(50),
date_naiss DATE,
email VARCHAR(50),
niveau VARCHAR(50),
specialite VARCHAR(50),
-- foreign key
idLycee INT,
FOREIGN KEY(idLycee) REFERENCES Lycee(idLycee)
);


CREATE TABLE Epreuve(
IdEpreuve INT PRIMARY KEY AUTO_INCREMENT,
type VARCHAR(50),
date_epreuve  DATETIME,
-- foreign key
idTournoi INT,
FOREIGN KEY (idTournoi) REFERENCES Tournoi(idTournoi)
);

-- Score (idEleve,IdEpreuve, points) 
CREATE TABLE Score(
-- foreign key
idEleve INT,
-- foreign key
idEpreuve INT,
points INT,
PRIMARY KEY (idEleve,idEpreuve),
FOREIGN KEY (idEleve) REFERENCES Eleve(idEleve),
FOREIGN KEY(idEpreuve) REFERENCES Epreuve(IdEpreuve)
);


