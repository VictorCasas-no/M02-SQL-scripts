
SELECT Nom, Desenvolupador, CONCAT(Preu*168.43, ' ¥') AS 'Preu(¥)' FROM videojocs
	WHERE Preu BETWEEN 40 AND 60;
