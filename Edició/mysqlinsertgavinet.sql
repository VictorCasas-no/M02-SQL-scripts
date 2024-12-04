
CREATE TABLE procurador (
	id INTEGER PRIMARY KEY AUTO_INCREMENT,
	nom VARCHAR(50),
	adreça VARCHAR(50),
	dni CHAR(9),
	portant CHAR(9),
	FOREIGN KEY (portant) REFERENCES assumpte(id)
);

CREATE TABLE assumpte (
	id INTEGER PRIMARY KEY AUTO_INCREMENT,
	periode VARCHAR(50),
	estat VARCHAR(50),
	corresponent_a VARCHAR(50),
	FOREIGN KEY (corresponent_a) REFERENCES client(dni)
);

CREATE TABLE client (
	id INTEGER PRIMARY KEY AUTO_INCREMENT,
	dni CHAR(9),
	nom VARCHAR(50),
	adreça VARCHAR(50),
	assumpte_associat CHAR(9),
	FOREIGN KEY (assumpte_associat) REFERENCES assumpte(id)
);

INSERT INTO client VALUES ('75824312P','Tommy Miller','C\ Jackson Main, 22','3');
INSERT INTO client VALUES ('75827845S','Sara Miller','C\ Jackson Main, 22','4');
INSERT INTO client VALUES ('71016494H','Isaac Clark','C\ Jackson East, 10','5');
INSERT INTO client VALUES ('35644384N','Abby Anderson','C\ Jackson South, 4','6');
INSERT INTO client VALUES ('98713453D','Nathan Drake','C\ Egipt Plaza, 1','7');

INSERT INTO assumpte VALUES ('3','3-6 mesos','Pendent','Victor Sullivan');
INSERT INTO assumpte VALUES ('4','1 mes','Pendent','Samuel Drake');
INSERT INTO assumpte VALUES ('5','1-2 mesos','En resolució','Arthur Morgan');
INSERT INTO assumpte VALUES ('6','6-12 mesos','En resolució','Dutch van der Linde');
INSERT INTO assumpte VALUES ('7','14-21 dies','Pendent','Hosea Matthews');

INSERT INTO procurador VALUES ('1','Victor Sullivan','C\ Golden Abyss, 1','34568782P');
INSERT INTO procurador VALUES ('2','Samuel Drake','C\ End Street, 2','44511247S');
INSERT INTO procurador VALUES ('3','Arthur Morgan','C\ Blackwater, 10','88632145A');
INSERT INTO procurador VALUES ('4','Dutch van der Linde','C\ Chess Move Street, 3','11245611D');
INSERT INTO procurador VALUES ('5','Hosea Matthews','C\ Strawberry, 1','74756389H');



--Insereix tres clients amb 3 assumptes associats a cadascun d’ells.

INSERT INTO client VALUES ('46197954F','Franklin Clinton','C\ Whispymound Drive, 3677','8');
INSERT INTO client VALUES ('55214586M','Michael de Santa','C\ Portola Drive, 3671','9');
INSERT INTO client VALUES ('25479643T','Trevor Phillips','C\ Zancudo Avenue, 14','10');



--Assigna als advocats 3 assumptes nous (de nova creació o d’altres advocats).
 
INSERT INTO assumpte VALUES ('8','3 dies','En resolució','Victor Sullivan');
INSERT INTO assumpte VALUES ('9','3 mesos','Pendent','Samuel Drake');
INSERT INTO assumpte VALUES ('10','1-2 mesos','En resolució','Arthur Morgan');


--Esborra un client i verifica que es borra tota la informació d'un client (assumptes i advocats relacionats) quan es dona de baixa.

DELETE FROM client WHERE nom='Abby Anderson';
SELECT * FROM alumne WHERE nom='Abby Anderson';

