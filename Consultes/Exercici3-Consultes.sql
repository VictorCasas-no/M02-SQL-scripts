
--Extreure el nombre total d'alumnes (comptar-los).

SELECT COUNT (*) FROM alumnes;


--Extreure el nombre total d'alumnes matriculats en l'any acadèmic '2022'.

SELECT * FROM matriculacions WHERE Any_Academic = 20222023 OR Any_Academic = 20212022;
SELECT * FROM matriculacions WHERE Any_Academic IN (20222023, 20212022);
SELECT * FROM matriculacions WHERE Any_Academic LIKE '%2022%';


--Extreure els ID dels professors amb NIF que comença amb '4'.

SELECT * FROM professors WHERE NIF_P LIKE '4%';


--Extreure el nom i telèfon dels professors que tenen telèfon acabat en '9'.

SELECT Nom, Telefon FROM professors WHERE Telefon LIKE '%9';


--Extreure el num_matricula, nom i telefon dels alumnes que han nascut entre el 1995 i el 2005.

SELECT NumMatricula, Nom, Telefon FROM alumnes WHERE YEAR(DataNaixement) BETWEEN 1995 AND 2005;
SELECT NumMatricula, Nom, Telefon FROM alumnes WHERE YEAR(DataNaixement) >= 1995 AND YEAR(DataNaixement) <= 2005;


--Extreure el nom i el telèfon dels professors que imparteixen alguna assignatura.

SELECT Nom, Telefon FROM professors WHERE ID_P IN (0,1,2,3);
SELECT Nom, Telefon FROM professors WHERE ID_P IN (SELECT ID_Professor FROM assignatures);


--Extreure el nom i any acadèmic de les assignatures en què està matriculat algun alumne.




