
CREATE TABLE animals ( 
	id INT UNSIGNED,
	nom VARCHAR (20),
	tipus VARCHAR (20),
	rasa VARCHAR (20),
	pes INTEGER,
	color VARCHAR (20)
	PRIMARY KEY (id)
);

CREATE TABLE encanteris (
	id INT UNSIGNED,
	data_encanteri DATE,
	nom_mag VARCHAR (20),
	animal_encantat VARCHAR (20),
	PRIMARY KEY (id),
	FOREIGN KEY (animal_encantat) REFERENCES animals(id)
);
