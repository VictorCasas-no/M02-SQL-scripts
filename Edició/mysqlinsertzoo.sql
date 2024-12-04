
CREATE TABLE zoo (
	id INTEGER PRIMARY KEY AUTO_INCREMENT,
	nom VARCHAR(50),
	ciutat VARCHAR(50),
	pais VARCHAR(50),
	pressupost INTEGER,
	grandaria CHAR(9),
	poseeix CHAR(9),
	FOREIGN KEY zoo(poseeix) REFERENCES animal(id)
);

CREATE TABLE animal (
	id INTEGER PRIMARY KEY AUTO_INCREMENT,
	num_identificacio INTEGER AUTO_INCREMENT,
	sexe CHAR(9),
	any_naixement INTEGER,
	pais_origen VARCHAR(50),
	continent VARCHAR(50)
);

CREATE TABLE especie (
	id INTEGER PRIMARY KEY AUTO_INCREMENT,
	nom_vulgar VARCHAR(50),
	nom_cientific VARCHAR(50),
	familia VARCHAR(50),
	en_perill_extincio CHAR(9)
);

INSERT INTO zoo VALUES ('1','Zoo de Barcelona','Barcelona','Espanya','20000000','13.5 Hectàries');
INSERT INTO zoo VALUES ('2','Zoo Aquarium de Madrid','Madrid','Espanya','40000000','20 Hectàries');
INSERT INTO zoo VALUES ('3','Bioparc València','València','Espanya','15000000','10 Hectàries');
INSERT INTO zoo VALUES ('4','Oceanogràfic de València','València','Espanya','50000000','11 Hectàries');
INSERT INTO zoo VALUES ('5','Parc de la Naturalesa de Cabàrceno','Penagos','Espanya','15000000','750 Hectàries');

INSERT INTO animal VALUES ('1','1','Mascle','2008','França','Europa','1');
INSERT INTO animal VALUES ('2','2','Femella','2009','Japó','Àsia','2');
INSERT INTO animal VALUES ('3','3','Femella','2015','Guinea Equatorial','Àfrica','3');
INSERT INTO animal VALUES ('4','4','Mascle','2012','Austràlia','Oceania','4');
INSERT INTO animal VALUES ('5','5','Mascle','2006','Zimbabwe','Àfrica','5');

INSERT INTO especie VALUES ('1','Llop dels Alps','Canis lupus lupus','Cànids','No');
INSERT INTO especie VALUES ('2','Panda gegant','Ailuropoda melanoleuca','Osos','Perill vulnerable');
INSERT INTO especie VALUES ('3','Goril·la Occidental','Gorilla gorilla gorilla','Simis','Perill vulnerable');
INSERT INTO especie VALUES ('4','Tauró Toro','Carcharhinus leucas','Taurons','Vulnerable');
INSERT INTO especie VALUES ('1','Rinoceront blanc','Ceratotherium simum','Rinoceronts','Quasi amenaçat');


--Incrementa en un 10% el pressupost del zoològic amb animals femenins del continent africà.

UPDATE zoo SET pressupost=pressupost*1.10  WHERE sexe='Femella' AND continent='Àfrica';


--Esborra un dels zoològics i comprova si s'han eliminat també els animals associats.
 
DELETE FROM zoo WHERE nom='Zoo de Barcelona';
SELECT FROM zoo WHERE nom='Zoo de Barcelona';


--Esborra una espècie de la base de dades i comprova si els animals associats continuen presents o si s'han esborrat.

DELETE FROM especie WHERE nom_vulgar='Llop dels Alps';
SELECT * FROM alumne WHERE nom_vulgar='Llop dels Alps';

