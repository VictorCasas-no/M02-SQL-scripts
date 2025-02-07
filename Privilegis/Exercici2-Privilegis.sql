DROP DATABASE IF EXISTS hyrule;

CREATE DATABASE hyrule;
USE hyrule;

CREATE TABLE herois (
	id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	nom VARCHAR(25),
	edat INT UNSIGNED
);

CREATE TABLE mascares (
	id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	nom VARCHAR(25),
	color VARCHAR(15)
);

CREATE TABLE armes (
	id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	nom VARCHAR(25),
	poder INT UNSIGNED
);

INSERT INTO herois (nom,edat) VALUES  ('superman', 352), ('spiderman', 21);
INSERT INTO mascares (nom, color) VALUES ('majora', 'marró'), ('rupies', 'verd');
INSERT INTO armes (nom, poder) VALUES ('espasa mestra', 100), ('arc', 40);

SHOW DATABASES;
SHOW TABLES;
DESCRIBE herois;
DESCRIBE mascares;
DESCRIBE armes;


-- a) Crea un usuari anomenat user@direccio_IP, on direccio_IP és l'identificador d'una màquina client que tinguis i ganon un usuari al que vulguis donar accés a aquella màquina, per exemple ganon@192.168.70.10.

CREATE USER 'user'@'192.168.70.10' IDENTIFIED BY 'tu_contraseña';


-- b) Dona permisos de selecció a totes les taules de la base de dades hyrule per a l'usuari creat anteriorment.

GRANT SELECT ON hyrule.* TO 'user'@'192.168.70.10';


-- c) Connectat al servidor des de la màquina client i esbrina quins permisos li has concedit a l'usuari. Indica quina comanda SQL executes per conèixer els permisos que tens.

SHOW GRANTS FOR 'user'@'192.168.70.10';


-- d) Revoca-li els permisos concedits a l'usuari user@direccio_IP.

REVOKE ALL PRIVILEGES ON hyrule.* FROM 'user'@'192.168.70.10';


-- e) Ara concedeix-li permisos de creació de taules a una nova base de dades que has de crear.

CREATE DATABASE hyrule2;
GRANT CREATE ON hyrule2.* TO 'user'@'192.168.70.10';


-- f) Connectat des del client i prova de crear una taula en aquesta base de dades que acabes de crear. Pots consultar la informació?

USE hyrule2;
CREATE TABLE taula_exemple (
    id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(50)
);
DESCRIBE taula_exemple;


-- g) Esborra l'usuari user@direccio_IP.

DROP USER 'user'@'192.168.70.10';


-- h) Amb la BD mysql, consulta quins privilegis té l'usuari skullkid@localhost a nivell de servidor (taula user), a nivell de base de dades (taula db), a nivell de taules (taula tables_priv) i a nivell de columnes (taula columns_priv).

SELECT * FROM mysql.user WHERE User = 'skullkid' AND Host = 'localhost';
SELECT * FROM mysql.db WHERE User = 'skullkid' AND Host = 'localhost';
SELECT * FROM mysql.tables_priv WHERE User = 'skullkid' AND Host = 'localhost';
SELECT * FROM mysql.columns_priv WHERE User = 'skullkid' AND Host = 'localhost';

