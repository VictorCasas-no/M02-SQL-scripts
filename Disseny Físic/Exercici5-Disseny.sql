CREATE TABLE procurador (
  id INT UNSIGNED,
  dni CHAR(9),
  nom VARCHAR(20),
  adreça VARCHAR(30),
  PRIMARY KEY (id),
  UNIQUE (dni)
);

CREATE TABLE assumpte (
  id INT UNSIGNED,
  estat VARCHAR(20),
  periode VARCHAR(30),
  PRIMARY KEY (id) 
);

CREATE TABLE client (
  id INT UNSIGNED,
  dni CHAR(9),
  nom VARCHAR(20),
  adreça VARCHAR(30),
  PRIMARY KEY (id),
  UNIQUE (dni)
);

