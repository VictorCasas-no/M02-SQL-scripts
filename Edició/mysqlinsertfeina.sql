
CREATE TABLE empleat (
	id_e INTEGER PRIMARY KEY AUTO_INCREMENT,
	dni_e CHAR(9),
	nom VARCHAR(50),
	telefon CHAR(9),
	salari CHAR(9),
	nascut_a VARCHAR(50),
	FOREIGN KEY (nascut_a) REFERENCES localitat(codi)
);

CREATE TABLE localitat (
	codi CHAR(9) PRIMARY KEY,
	nom VARCHAR(50),
	empleats CHAR(9),
	FOREIGN KEY (empleats) REFERENCES professor(id_e)
);

CREATE TABLE provincia (
        codi INTEGER PRIMARY KEY AUTO_INCREMENT,
	nom VARCHAR(50),
	pertany_a (VARCHAR(50),
	FOREIGN KEY (pertanya_a) REFERENCES localitat(codi)
);

CREATE TABLE regio (
	nom_regio VARCHAR(50) PRIMARY KEY,
	pertany_a VARCHAR(50),
	FOREIGN KEY (pertany_a) REFERENCES provincia(codi)
);


INSERT INTO empleat VALUES ('1','68542315T','Tommy Miller','684351265','25000','Barcelona');
INSERT INTO empleat VALUES ('2','24536175J','Joel Miller','623456878','45000','Tarragona');
INSERT INTO empleat VALUES ('3','33576412S','Sara Miller','635126547','19000','Rubí');
INSERT INTO empleat VALUES ('4','11345692E','Ellie Williams','605689514','20000','Molins de Rei');
INSERT INTO empleat VALUES ('5','11146311D','Dutch van der Linde','606365942','100000','Girona');

INSERT INTO localitat VALUES ('1','Barcelona','1');
INSERT INTO localitat VALUES ('2','Molins de Rei','2');
INSERT INTO localitat VALUES ('3','Rubí','3');
INSERT INTO localitat VALUES ('4','Tarragona','4');
INSERT INTO localitat VALUES ('5','Girona','5');

INSERT INTO provincia VALUES ('1','Barcelona','Catalunya');
INSERT INTO provincia VALUES ('2','Molins de Rei','Catalunya');
INSERT INTO provincia VALUES ('3','Rubí','Catalunya');
INSERT INTO provincia VALUES ('4','Tarragona','Catalunya');
INSERT INTO provincia VALUES ('5','Girona','Catalunya');

INSERT INTO regio VALUES ('Catalunya','Espanya');
INSERT INTO regio VALUES ('Pais Valencià','Espanya');
INSERT INTO regio VALUES ('Aragó','Espanya');
INSERT INTO regio VALUES ('Castilla la Manxa','Espanya');
INSERT INTO regio VALUES ('Madrid','Espanya');



--Esborra totes les localitats que no tinguin empleats.

DELETE FROM localitat WHERE empleats='0';


--Esborra els empleats amb un sou superior a 70000€.

DELETE FROM empleat WHERE salari > 70000;


--Estableix a 50000€ el sou dels empleats que han nascut a Barcelona.

UPDATE empleat SET salari=50000 WHERE nascut_a='Barcelona';


--Incrementa un 20% el sou dels empleats amb un sou inicial inferior a 20000€.

UPDATE empleat SET salari=salari*1.20  WHERE salari < 20000;



