
DELETE FROM al·lergogens WHERE id NOT IN (SELECT id_alergogen FROM ingredients_al·lergogens);



UPDATE ingredients SET preu = preu * 1.20 WHERE id NOT IN (SELECT id_ingredient FROM pizzes_ingredients);



DELETE FROM comandes_pizzes WHERE id_comandes IN (SELECT num_comanda FROM comandes WHERE preu_total IN (SELECT preu_total FROM (SELECT preu_total FROM comandes ORDER BY preu_total LIMIT 2) AS temp)); 

DELETE FROM comandes WHERE preu_total IN (SELECT preu_total FROM (SELECT preu_total FROM comandes ORDER BY preu_total LIMIT 2) AS temp);


