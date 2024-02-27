CREATE TABLE IF NOT EXISTS personne (
  prenom VARCHAR(255) NOT NULL,
  nom VARCHAR(255) NOT NULL,
  age INT,
  PRIMARY KEY (prenom, nom)
  );

INSERT INTO personne (prenom, nom, age) VALUES ('Mathys', 'BRONNEC',21);
INSERT INTO personne (prenom, nom, age) VALUES ('Sam', 'BIENNASSIS',21);
INSERT INTO personne (prenom, nom, age) VALUES ('Lisa', 'CHARUEL',21);
INSERT INTO personne (prenom, nom, age) VALUES ('Jules', 'DEPLANCHON',21);