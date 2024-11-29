
CREATE TABLE empleat (
	id_e CHAR(9) PRIMARY KEY,
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
        codi CHAR(9) PRIMARY KEY,
	nom VARCHAR(50),
	pertany_a (VARCHAR(50),
	FOREIGN KEY (pertanya_a) REFERENCES localitat(codi)
);

CREATE TABLE regio (
	nom_regio VARCHAR(50) PRIMARY KEY,
	pertany_a VARCHAR(50),
	FOREIGN KEY (pertany_a) REFERENCES provincia(codi)
);



--Esborra totes les localitats que no tinguin empleats.

DELETE FROM localitat WHERE empleats='0';


--Esborra els empleats amb un sou superior a 70000€.

DELETE FROM empleat WHERE salari > 70000;


--Estableix a 50000€ el sou dels empleats que han nascut a Barcelona.

UPDATE empleat SET salari=50000 WHERE nascut_a='Barcelona';


--Incrementa un 20% el sou dels empleats amb un sou inicial inferior a 20000€.

UPDATE empleat SET salari=salari*1.20  WHERE salari < 20000;



