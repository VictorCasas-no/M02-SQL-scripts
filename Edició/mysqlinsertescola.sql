
CREATE TABLE alumne (
	NumMatricula INTEGER PRIMARY KEY AUTO_INCREMENT,
	nom VARCHAR(50),
	telefon CHAR(9),
	Datanaixement DATE,
	matriculat_en VARCHAR(50),
	FOREIGN KEY (matriculat_en) REFERENCES assignatura(codi)
);

CREATE TABLE assignatura (
	codi INTEGER PRIMARY KEY AUTO_INCREMENT,
	nom VARCHAR(50),
	impartida_per (VARCHAR(50),
	FOREIGN KEY (impartida_per) REFERENCES professor(id_p)
);

CREATE TABLE professor (
        id_p CHAR(9) PRIMARY KEY,
        nif_p CHAR(9),
        telefon CHAR(9),
	nom VARCHAR(50),
        Especialitat VARCHAR(50),
	FOREIGN KEY (imparteix) REFERENCES assignatura(codi)
);



--Insereix un professor amb el nom de Joel Miller.

INSERT INTO professor VALUES ('74570485T','J56894237','620130520','Joel Miller','Anàlisi de fongs');
SELECT * FROM professor WHERE id_p='74570485T';


--Insereix 2 assignatures que imparteixi Joel Miller.

INSERT INTO assignatura VALUES ('7','Anàlisi de Fongs','Joel Miller');
INSERT INTO assignatura VALUES ('8','Supervivència','Joel Miller');
SELECT * FROM assignatura WHERE impartida_per='Joel Miller';


--Insereix un alumne nou amb el nom d’Ellie Williams.

INSERT INTO alumne VALUES ('13','Ellie Williams','614042019','14/04/2019','Anàlisi de fongs');


--Insereix 2 matriculacions que ha fet l’Ellie a les 2 assignatures que imparteix Joel Miller. Aquest punt s’ha de fer mitjançant transaccions.

UPDATE alumne SET assignatura = CONCAT(matriculat_en, ', Supervivència') WHERE nom='Ellie Williams';


--Esborra a l’Ellie de la taula d’alumnes i verifica si hi ha hagut canvis.

DELETE FROM alumne WHERE nom='Ellie Williams';
SELECT * FROM alumne WHERE nom='Ellie Williams';





