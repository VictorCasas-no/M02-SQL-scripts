
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


INSERT INTO alumne VALUES ('Tommy Miller','648326894','07/05/1981','Supervivència');
INSERT INTO alumne VALUES ('Sara Miller','648123548','17/04/1991','Análisi de fongs');
INSERT INTO alumne VALUES ('Nathan Drake','648326894','07/05/1981','Arqueologia');
INSERT INTO alumne VALUES ('John Marston','612584936','07/05/1981','Caça');
INSERT INTO alumne VALUES ('Tommy Miller','648326894','07/05/1981','Lectura');

INSERT INTO assignatura VALUES ('3','3-6 mesos','Pendent',);
INSERT INTO assignatura VALUES ('4','1 mes','Pendent');
INSERT INTO assignatura VALUES ('5','1-2 mesos','En resolució');
INSERT INTO assignatura VALUES ('6','6-12 mesos','En resolució');
INSERT INTO assignatura VALUES ('7','14-21 dies','Pendent');

INSERT INTO professor VALUES ('1','P3456878','682457612','Victor Sullivan','Lectura');
INSERT INTO professor VALUES ('2','S44511247','635142658','Samuel Drake','Arqueologia');
INSERT INTO professor VALUES ('3','A78935126','623547581','Arthur Morgan','Caça');
INSERT INTO professor VALUES ('4','D11124537','615345894','Dutch van der Linde','Supervivència');
INSERT INTO professor VALUES ('5','H12548763','639854678','Hosea Matthews','Anàlisi de fongs');



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





