
CREATE TABLE clients (
	dni CHAR(9) PRIMARY KEY,
	nom VARCHAR(50),
	adreça VARCHAR(50),
	telefon VARCHAR(20)
);


CREATE TABLE comandes (
	num_comanda INT UNSIGNED PRIMARY KEY,
	preu_total DECIMAL,
	data DATE,
	estat VARCHAR(13),
	dni_client CHAR(9),
	FOREIGN KEY (dni_client) REFERENCES clients(dni)
);


CREATE TABLE pizzes (
	id INT UNSIGNED PRIMARY KEY,
	nom VARCHAR(50),
	preu_base DECIMAL
);


CREATE TABLE masses (
	id INT UNSIGNED PRIMARY KEY,
	nom VARCHAR(50),
	preu DECIMAL
);


CREATE TABLE al·lergogens (
	id INT UNSIGNED PRIMARY KEY,
	nom VARCHAR(50),
	descripcio VARCHAR(50)
);


CREATE TABLE tipus_ingredients (
	id INT UNSIGNED PRIMARY KEY,
	nom VARCHAR(50),
	descripcio VARCHAR(50)
);


CREATE TABLE ingredients (
        id INT UNSIGNED PRIMARY KEY,
        nom VARCHAR(50),
        preu DECIMAL,
        descripcio VARCHAR(50),
        id_tipus INT UNSIGNED,
        FOREIGN KEY (id_tipus) REFERENCES tipus_ingredients(id)
);


CREATE TABLE pizzes_masses (
	id_pizza INT UNSIGNED NOT NULL,
	id_massa INT UNSIGNED NOT NULL,
	PRIMARY KEY (id_pizza, id_massa),
	FOREIGN KEY (id_pizza) REFERENCES pizzes(id),
	FOREIGN KEY (id_massa) REFERENCES masses(id)
);


CREATE TABLE comandes_pizzes (
	id_pizza INT UNSIGNED NOT NULL, 
	id_comandes INT UNSIGNED NOT NULL,
	PRIMARY KEY (id_pizza, id_comandes),
	FOREIGN KEY (id_pizza) REFERENCES pizzes(id),
	FOREIGN KEY (id_comandes) REFERENCES comandes(num_comanda)
);


CREATE TABLE ingredients_al·lergogens (
	id_ingredient INT UNSIGNED NOT NULL,
	id_alergogen INT UNSIGNED NOT NULL,
	PRIMARY KEY (id_ingredient, id_alergogen),
	FOREIGN KEY (id_ingredient) REFERENCES ingredients(id),
	FOREIGN KEY (id_alergogen) REFERENCES al·lergogens(id)
);


CREATE TABLE pizzes_ingredients (
	id_pizza INT UNSIGNED NOT NULL,
	id_ingredient INT UNSIGNED NOT NULL,
	grams_per_ingredient INT UNSIGNED,
	PRIMARY KEY (id_pizza, id_ingredient),
	FOREIGN KEY (id_pizza) REFERENCES pizzes(id),
	FOREIGN KEY (id_ingredient) REFERENCES ingredients(id)
);
