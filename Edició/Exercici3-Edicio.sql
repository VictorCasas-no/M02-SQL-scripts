
CREATE TABLE mecanics (
	dni CHAR(9) PRIMARY KEY,
	nom VARCHAR(50),
	edat UNISGNED TINYINT
);

CREATE TABLE vehicles (
	matricula CHAR(7) PRIMARY KEY,
	propietari VARCHAR(50),
	marca VARCHAR(50),
	reparat_per CHAR(9),
	FOREIGN KEY (reparat_per) REFERENCES mecanics(dni)
		ON DELETE SET NULL
		ON UPDATE SET NULL
);


INSERT INTO vehicles VALUES ('4545 RER','Josep','Volkswagen','47147147Z');
INSERT INTO vehicles VALUES ('6565 DEF','Anna','Citroen','47147147Z');

INSERT INTO mecanics VALUES ('45645645A','Ernest','27');
INSERT INTO mecanics VALUES ('47147147Z','Carla','28');
INSERT INTO mecanics VALUES ('46946946P','Maria','18');



--Insercions

INSERT INTO vehicles VALUES ('9999 MNB','Manuel','Audi','65462135F');
SELECT * FROM vehicles WHERE reparat_per='65462135F';


--Actualizacions

UPDATE vehicles SET propietari='John' WHERE propietari='Manuel';
SELECT * FROM vehicles WHERE propietari='John';


--Esborrats
DELETE FROM vehicles WHERE dni='65462135F';
SELECT * FROM vehicles WHERE dni='65462135F';





