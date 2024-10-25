
CREATE TABLE alumne (
  num_matricula INT UNSIGNED,
  nom VARCHAR(15),
  telefon INT UNSIGNED,
  data_naixement DATE,
  PRIMARY KEY (num_matricula)
);

CREATE TABLE professor (
  id INT UNSIGNED,
  nif_p CHAR(9),
  nom VARCHAR(20),
  especialitat VARCHAR(15),
  telefon INT UNSIGNED,
  PRIMARY KEY (id),
  UNIQUE (nif_p)
);

CREATE TABLE assignatura (
  codi INT UNSIGNED,
  nom VARCHAR(15),
  id_professor INT UNSIGNED,
  FOREIGN KEY (id_professor) REFERENCES professor(id),
  PRIMARY KEY (codi)
);

CREATE TABLE matriculacions (
  num_matricula_alumne INT UNSIGNED,
  codi_assignatura INT UNSIGNED,
  any_academic YEAR, -- define el tipo de dato
  FOREIGN KEY (num_matricula_alumne) REFERENCES alumne(num_matricula),
  FOREIGN KEY (codi_assignatura) REFERENCES assignatura(codi),
  PRIMARY KEY (num_matricula_alumne, codi_assignatura)
);

