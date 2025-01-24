-- == PREPARACIÓ ==
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

-- >> Comprovació
SHOW DATABASES;
SHOW TABLES;
DESCRIBE herois;
DESCRIBE mascares;
DESCRIBE armes;

-- == TASQUES A FER ==
-- a) Crea un usuari anomenat navi@localhost amb la sintaxi CREATE USER amb permisos de només connexió. Comprova-ho amb SHOW GRANTS FOR navi@localhost;.
CREATE USER navi@localhost;

SELECT user,host FROM mysql.user WHERE user='navi';
SHOW GRANTS FOR navi@localhost;



-- b) Crea un usuari anomenat skullkid@localhost amb la sintaxi CREATE USER amb permisos de només connexió i identificat amb contrasenya. Comprova-ho amb SHOW GRANTS FOR skullkid@localhost;.
CREATE USER skullkid@localhost IDENTIFIED BY 'lost_woods_2024';

SELECT user,host FROM mysql.user WHERE user='skullkid';
SHOW GRANTS FOR skullkid@localhost;



-- c) Dona a l'usuari skullkid permisos de SELECT dins la taula hyrule.herois i comprova que pugui consultar la taula.
GRANT SELECT ON hyrule.herois TO skullkid@localhost;

SHOW GRANTS FOR skullkid@localhost;


-- d) Dona a l'usuari navi permisos de SELECT, INSERT i UPDATE a les taules de la base de dades hyrule amb GRANT OPTION.
GRANT SELECT, INSERT, UPDATE ON hyrule.* TO navi@localhost WITH GRANT OPTION;

SHOW GRANTS FOR navi@localhost;


-- e) Connecta't amb l'usuari navi i dona permisos de selecció a skullkid per a la taula hyrule.mascares, comprova que així sigui.
GRANT SELECT ON hyrule.mascares TO skullkid@localhost;

SHOW GRANTS FOR skullkid@localhost;


-- f) Treu els permisos de selecció a skullkid sobre la taula hyrule.herois.
REVOKE SELECT ON hyrule.herois FROM skullkid@localhost;


-- g) Connecta't com a root i elimina tots els permisos que has donat a navi i skullkid.
REVOKE SELECT, INSERT, UPDATE, GRANT OPTION ON hyrule.* FROM navi@localhost;
REVOKE SELECT ON hyrule.mascares FROM skullkid@localhost;

SHOW GRANTS FOR navi@localhost;
SHOW GRANTS FOR skullkid@localhost;


-- h) Dona a skullkid els permisos de SELECT sobre les columnes id i nom de la taula armes de la BD hyrule.
GRANT SELECT(id,nom) ON hyrule.armes TO skullkid@localhost;

SHOW GRANTS FOR skullkid@localhost;


-- i) Connecta't amb skullkid i executa la query SELECT * FROM hyrule.armes. Què succeeix?
-- Error: La comanda es denega perquè skullkid té permisos de SELECT solament
-- als camps id i nom de hyrule.armes, no a tots els camps.

-- j) Esborra l'usuari navi. Com ha quedat la BD a nivell d'usuaris (taula mysql.user) i de permisos (taula information_schema.user_privileges)?
DROP USER navi@localhost;
SELECT user,host FROM mysql.user;
SELECT * FROM information_schema.user_privileges;
