

CREATE TABLE regio (
  nom_regio VARCHAR(15),
  PRIMARY KEY (nom_regio)
);


CREATE TABLE empleat (
  id_e INT UNSIGNED,
  nif_p CHAR(9),
  nom VARCHAR(20),
  salari INT UNSIGNED,
  telefon INT UNSIGNED,
  PRIMARY KEY (id_e),
  UNIQUE (nif_p)
);


CREATE TABLE localitat (
  codi INT UNSIGNED,
  nom VARCHAR(15),
  PRIMARY KEY (codi)
);


CREATE TABLE provincia (
  codi INT UNSIGNED,
  nom VARCHAR(15),
  PRIMARY KEY (codi)
);
