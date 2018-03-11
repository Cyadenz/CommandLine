#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: Candidat
#------------------------------------------------------------

CREATE TABLE Candidat(
        IdCandidat int (11) Auto_increment  NOT NULL ,
        Nom        Varchar (25) ,
        PRIMARY KEY (IdCandidat )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Personne
#------------------------------------------------------------

CREATE TABLE Personne(
        Prenom     Varchar (25) ,
        IdCandidat Int NOT NULL ,
        PRIMARY KEY (IdCandidat )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Equipe
#------------------------------------------------------------

CREATE TABLE Equipe(
        NomEquipe  Varchar (25) ,
        IdCandidat Int NOT NULL ,
        PRIMARY KEY (IdCandidat )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Competition
#------------------------------------------------------------

CREATE TABLE Competition(
        IdCompetition  int (11) Auto_increment  NOT NULL ,
        EnEquipe       Bool ,
        NomCompetition Varchar (25) ,
        PRIMARY KEY (IdCompetition )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Appartenir
#------------------------------------------------------------

CREATE TABLE Appartenir(
        IdCandidat   Int NOT NULL ,
        IdCandidat_1 Int NOT NULL ,
        PRIMARY KEY (IdCandidat ,IdCandidat_1 )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: S'inscrire
#------------------------------------------------------------

CREATE TABLE S_inscrire(
        IdCandidat    Int NOT NULL ,
        IdCompetition Int NOT NULL ,
        PRIMARY KEY (IdCandidat ,IdCompetition )
)ENGINE=InnoDB;

ALTER TABLE Personne ADD CONSTRAINT FK_Personne_IdCandidat FOREIGN KEY (IdCandidat) REFERENCES Candidat(IdCandidat);
ALTER TABLE Equipe ADD CONSTRAINT FK_Equipe_IdCandidat FOREIGN KEY (IdCandidat) REFERENCES Candidat(IdCandidat);
ALTER TABLE Appartenir ADD CONSTRAINT FK_Appartenir_IdCandidat FOREIGN KEY (IdCandidat) REFERENCES Candidat(IdCandidat);
ALTER TABLE Appartenir ADD CONSTRAINT FK_Appartenir_IdCandidat_1 FOREIGN KEY (IdCandidat_1) REFERENCES Candidat(IdCandidat);
ALTER TABLE S_inscrire ADD CONSTRAINT FK_S_inscrire_IdCandidat FOREIGN KEY (IdCandidat) REFERENCES Candidat(IdCandidat);
ALTER TABLE S_inscrire ADD CONSTRAINT FK_S_inscrire_IdCompetition FOREIGN KEY (IdCompetition) REFERENCES Competition(IdCompetition);
