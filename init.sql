-- create tables including entities and attributes

CREATE TABLE Acteur
(
    id_acteur SERIAL PRIMARY KEY NOT NULL,
    nom_acteur VARCHAR (50)NOT NULL,
    prenom_acteur VARCHAR (50)  NOT NULL,
    role_acteur VARCHAR (200) NOT NULL,
    date_naissance_acteur date NOT NULL,
    date_creation date NOT NULL,
    date_modif date NOT NULL
   
);

CREATE TABLE Film
(
    id_film SERIAL PRIMARY KEY NOT NULL,
    titre_film VARCHAR (50)NOT NULL,
    année_film date NOT NULL,
    dureé_film VARCHAR (200) NOT NULL,
    date_creation date NOT NULL,
    date_modif date NOT NULL
   
);




    CREATE TABLE Joues_dans
(
	id_film INT REFERENCES film(id_film),
	id_acteur INT REFERENCES acteur(id_acteur)
);


CREATE TABLE Realisateur
(
    id_realisateur serial PRIMARY KEY NOT NULL,
    nom_realisateur VARCHAR (50)NOT NULL,
    prenom_realisateur VARCHAR (50)  NOT NULL,
    date_creation date NOT NULL,
    date_modif date NOT NULL
   
);


CREATE TABLE Utilisateur
(
    id_utilisateur serial PRIMARY KEY,
    nom_utilisateur VARCHAR (50)NOT NULL,
    prenom_utilisateur VARCHAR (50)  NOT NULL,
    email_utilisateur VARCHAR (50)NOT NULL,
    mdp_utilisateur VARCHAR (50)  NOT NULL,
    role_utilisateur VARCHAR (50)NOT NULL,
    liste_utilisateur VARCHAR (50)  NOT NULL,
    date_creation date NOT NULL,
    date_modif date NOT NULL
   
);



CREATE TABLE Pref
(
   
    id_film INT REFERENCES film(id_film),
	id_utilisateur INT REFERENCES utilisateur(id_utilisateur)
	
);








-- Data Acteur

INSERT INTO Acteur (id_acteur, nom_acteur, prenom_acteur, role_acteur, date_naissance_acteur, date_creation, date_modif)
VALUES
  ('1','Smith', 'John', 'Acteur principal', '1990-05-15', '2023-01-01', '2023-01-01'),
  ('2','Doe', 'Jane', 'Actrice secondaire', '1985-11-20', '2023-01-02', '2023-01-02'),
  ('3','Johnson', 'Michael', 'Second rôle', '1978-09-10', '2023-01-03', '2023-01-03'),
  ('4','Williams', 'Emily', 'Figurant', '1995-03-25', '2023-01-04', '2023-01-04'),
  ('5','James', 'Jones', 'Lead Actress', '1990-09-03', '2022-01-01', '2022-01-01'),
  ('6','Emma', 'Johnson', 'Supporting Actress', '1988-04-22', '2022-01-01', '2022-01-01'),
  ('7','William', 'White', 'Lead Actor', '1993-12-07', '2022-01-01', '2022-01-01'),
  ('8','Mia', 'Davis', 'Supporting Actor', '1981-11-14', '2022-01-01', '2022-01-01'),
  ('9','Ethan', 'Miller', 'Character Actor', '1970-06-29', '2022-01-01', '2022-01-01'),
  ('10','Ava', 'Anderson', 'Lead Actress', '1995-03-26', '2022-01-01', '2022-01-01'),
  ('11','Noah', 'Brown', 'Supporting Actress', '1987-10-11', '2022-01-01', '2022-01-01');


-- -- Data Film  : 
INSERT INTO film (titre_film,année_film,dureé_film,date_creation,date_modif) VALUES
 ('Inception', '2010-07-16', '2h28m', '2023-01-01', '2023-01-01'),
  ('The Shawshank Redemption', '1994-09-23', '2h22m', '2023-01-02', '2023-01-02'),
  ('The Godfather', '1972-03-24', '2h58m', '2023-01-03', '2023-01-03'),
  ('Pulp Fiction', '1994-10-14', '2h34m', '2023-01-04', '2023-01-04'),
   ('The Dark Knight', '2008-07-18', '2h32m', '2023-01-05', '2023-01-05'),
  ('Schindler''s List', '1993-12-15', '3h15m', '2023-01-06', '2023-01-06'),
  ('Forrest Gump', '1994-07-06', '2h22m', '2023-01-07', '2023-01-07'),
  ('The Matrix', '1999-03-31', '2h16m', '2023-01-08', '2023-01-08');

-- -- Data Realisateur :

INSERT INTO Realisateur (nom_realisateur, prenom_realisateur, date_creation, date_modif)
VALUES
  ('Nolan', 'Christopher', '2023-01-01', '2023-01-01'),
  ('Spielberg', 'Steven', '2023-01-02', '2023-01-02'),
  ('Tarantino', 'Quentin', '2023-01-03', '2023-01-03'),
  ('Coppola', 'Francis Ford', '2023-01-04', '2023-01-04'),
  ('Andrew', 'Williams', '2022-01-01', '2022-01-01'),
('Sophia', 'White', '2022-01-01', '2022-01-01'),
('Matthew', 'Anderson', '2022-01-01', '2022-01-01'),
('Ava', 'Jones', '2022-01-01', '2022-01-01'),
('James', 'Taylor', '2022-01-01', '2022-01-01'),
('Grace', 'Moore', '2022-01-01', '2022-01-01'),
('William', 'Martin', '2022-01-01', '2022-01-01'),
('Ella', 'Wilson', '2022-01-01', '2022-01-01'),
('Liam', 'Johnson', '2022-01-01', '2022-01-01');


-- --Data Utilisateur :
INSERT INTO Utilisateur (nom_utilisateur, prenom_utilisateur, email_utilisateur, mdp_utilisateur, role_utilisateur, liste_utilisateur, date_creation, date_modif)
VALUES
  ('Doe', 'John', 'johndoe@example.com', 'motdepasse123', 'Utilisateur standard', 'Liste 1', '2023-01-01', '2023-01-01'),
  ('Smith', 'Jane', 'janesmith@example.com', 'mdpsecret456', 'Administrateur', 'Liste 2', '2023-01-02', '2023-01-02'),
  ('Johnson', 'Michael', 'michaeljohnson@example.com', 'secretpassword789', 'Utilisateur standard', 'Liste 3', '2023-01-03', '2023-01-03'),
  ('Brown', 'David', 'davidbrown@example.com', 'password123', 'Utilisateur standard', 'Liste 5', '2023-01-05', '2023-01-05'),
  ('Garcia', 'Maria', 'mariagarcia@example.com', 'securepass789', 'Administrateur', 'Liste 6', '2023-01-06', '2023-01-06'),
  ('Chen', 'Wei', 'weichen@example.com', 'motdepasse456', 'Utilisateur standard', 'Liste 7', '2023-01-07', '2023-01-07'),
  ('Kim', 'Soojin', 'soojinkim@example.com', 'mdpfort890', 'Modérateur', 'Liste 8', '2023-01-08', '2023-01-08');

-- Data table Pref :

INSERT INTO Pref (id_film, id_utilisateur)
VALUES
  (1, 1),
  (2, 2), 
  (3, 3); 


-- Data table Joue_dans ;
INSERT INTO Joues_dans (id_film, id_acteur)
VALUES
  (1, 1), 
  (2, 3), 
  (3, 2),
  (4, 1), 
  (2, 4), 
  (3, 3); 
