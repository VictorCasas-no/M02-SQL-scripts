
CREATE TABLE assignatura (
    codi INTEGER PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(50),
    impartida_per VARCHAR(50)
);

CREATE TABLE professor (
    id_p CHAR(9) PRIMARY KEY,
    nif_p CHAR(9),
    telefon CHAR(9),
    nom VARCHAR(50),
    especialitat VARCHAR(50)
);

CREATE TABLE alumne (
    numMatricula INTEGER PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(50),
    telefon CHAR(9),
    datanaixement DATE
);

CREATE TABLE matriculacions (
    numMatricula INTEGER,
    codi_assignatura INTEGER,
    PRIMARY KEY (numMatricula, codi_assignatura),
    FOREIGN KEY (numMatricula) REFERENCES alumne(numMatricula),
    FOREIGN KEY (codi_assignatura) REFERENCES assignatura(codi)
);


INSERT INTO assignatura (codi, nom, impartida_per) VALUES
(1, 'Supervivència', 'Victor Sullivan'),
(2, 'Anàlisi de fongs', 'Samuel Drake'),
(3, 'Arqueologia', 'Samuel Drake'),
(4, 'Caça', 'Arthur Morgan'),
(5, 'Lectura', 'Dutch van der Linde');


INSERT INTO professor (id_p, nif_p, telefon, nom, especialitat) VALUES
('1', 'P3456878', '682457612', 'Victor Sullivan', 'Lectura'),
('2', 'S44511247', '635142658', 'Samuel Drake', 'Arqueologia'),
('3', 'A78935126', '623547581', 'Arthur Morgan', 'Caça'),
('4', 'D11124537', '615345894', 'Dutch van der Linde', 'Supervivència'),
('5', 'H12548763', '639854678', 'Hosea Matthews', 'Anàlisi de fongs');





--Insereix un professor amb el nom de Joel Miller.

INSERT INTO professor (id_p, nif_p, telefon, nom, especialitat) VALUES
('74570485T','J56894237','620130520','Joel Miller','Anàlisi de fongs');


--Insereix 2 assignatures que imparteixi Joel Miller.

INSERT INTO assignatura (codi, nom, impartida_per) VALUES
(6,'Anàlisi de Fongs','Joel Miller'),
(7,'Supervivència','Joel Miller');


--Insereix un alumne nou amb el nom d'Ellie Williams.

INSERT INTO alumne (nom, telefon, datanaixement) VALUES
('Ellie Williams','614042019','2019-04-14');


--Insereix 2 matriculacions que ha fet l'Ellie a les 2 assignatures que imparteix Joel Miller.

INSERT INTO matriculacions (numMatricula, codi_assignatura) VALUES
(1,6),
(1,7);


--Actualitza el camp clau de l'Ellie Williams i esbrina si hi ha hagut algun canvi.

SELECT * FROM alumne WHERE nom='Ellie Williams';


--Esborra a l'Ellie de la taula d'alumnes i verifica si hi ha hagut canvis.

DELETE FROM alumne WHERE nom='Ellie Williams';
SELECT * FROM alumne WHERE nom='Ellie Williams';

