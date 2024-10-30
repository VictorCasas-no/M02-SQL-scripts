CREATE TABLE especies (
	id INT UNSIGNED AUTO_INCREMENT,
	nom_vulgar VARCHAR(20),
	nom_cientific(20),
	familia ENUM('mamífer','amfibi','au'),
	en_perill_extincio BOOLEAN,
	PRIMARY KEY (id)
);


CREATE TABLE zoos (
	id INT UNSIGNED AUTO_INCREMENT,
	nom VARCHAR(20),
	ciutat VARCHAR(20),
	pais ENUM('espanya','frança','marroc','italia')
	pressupost INT UNSIGNED,
	grandaria INT UNSIGNED,
	PRIMARY KEY (id),
	CHECK (grandaria > 1000 AND grandaria < 1000000)
);


CREATE TABLE animals (
	id INT UNSIGNED AUTO_INCREMENT,
	num_identificacio INT UNSIGNED UNIQUE,
	sexe ENUM('mascle','femella'),
	any_naixement SMALLINT UNSIGNED,
	pais_origen ENUM('espanya','frança','marroc','italia')
	continent ENUM('europa','africa')
	id_especie INT UNSIGNED,
	id_zoo INT UNSIGNED,
	FOREIGN KEY (id_especie) REFERENCES especies(id),
	FOREIGN KEY (id_zoo) REFERENCES zoos(id),
	PRIMARY KEY (id)
);

