
/*1. Llista el nom, adreça i telèfon de tots els clients.*/
SELECT nom, adreça, telefon FROM clients;


/*2. Llista totes les pizzes que tenen un preu base superior a 10 euros.*/
SELECT nom, preu_base FROM pizzes WHERE preu_base > 10;


/*3. Mostra la pizza amb el preu base més car.*/
SELECT nom, preu_base FROM pizzes WHERE preu_base = (SELECT MAX(preu_base) FROM pizzes);


/*4. Llista les 3 masses més cares ordenades per preu, de la més cara a la més barata.*/
SELECT nom, preu FROM masses ORDER BY preu DESC LIMIT 3;


/*5. Llista quantes comandes ha fet cada client.*/
SELECT dni_client, COUNT(num_comanda) AS num_comandes FROM comandes GROUP BY dni_client;


/*6. Llista totes les comandes realitzades abans del 2 de desembre (sé que era del migida, però no hi tenia data amb hora, llavorens n'he posat un dia).*/
SELECT num_comanda, dni_client, preu_total, data, estat FROM comandes WHERE data <= '2024-12-02';


/*7. Llista els ingredients que contenen al·lergògens, mostrant només el nom de l'ingredient amb l'àlias "Ingredients amb al·lergògens".*/
SELECT i.nom AS "Ingredients amb al·lergògens" FROM ingredients i JOIN ingredients_al·lergogens ia ON i.id = ia.id_ingredient;


/*8. Mostra la mitjana de preu per ingredient.*/
SELECT nom, AVG(preu) AS "Mitjana de preu" FROM ingredients GROUP BY nom;


/*9. Mostra el total de grams d'ingredients que conté cada pizza.*/
SELECT pizzes.nom, SUM(pizzes_ingredients.grams_per_ingredient) AS "Total grams d'ingredients" FROM pizzes JOIN pizzes_ingredients ON pizzes.id = pizzes_ingredients.id_pizza GROUP BY pizzes.nom;


/*10. Llista el nombre total de comandes per client, mostrant el nom del client i el total de comandes realitzades.*/
SELECT clients.nom, (SELECT COUNT(*) FROM comandes WHERE comandes.dni_client = clients.dni) AS "Nombre de comandes" FROM clients;

SELECT clients.nom, COUNT(comandes.num_comanda) AS "Nombre de comandes" FROM clients LEFT JOIN comandes ON clients.dni = comandes.dni_client GROUP BY clients.nom;


/*11. Llista les pizzes que tenen més de tres ingredients, mostrant el nom de la pizza i el número d'ingredients.*/
SELECT p.nom AS pizza, (SELECT COUNT(*) FROM pizzes_ingredients pi WHERE pi.id_pizza = p.id) AS num_ingredients FROM pizzes p HAVING num_ingredients > 3;

SELECT p.nom AS pizza, COUNT(pi.id_ingredient) AS num_ingredients FROM pizzes p JOIN pizzes_ingredients pi ON p.id = pi.id_pizza GROUP BY p.id HAVING COUNT(pi.id_ingredient) > 3;


/*12. Extreu la facturació que ha tingut un client específic en tota la seva vida, indicant la base imposable, l'IVA i el total facturat.*/
SELECT clients.nom AS client, SUM(comandes.preu_total / 1.21) AS base_imposable, SUM(comandes.preu_total - (comandes.preu_total / 1.21)) AS IVA, SUM(comandes.preu_total) AS total_facturat FROM clients LEFT JOIN comandes ON clients.dni = comandes.dni_client WHERE clients.dni = 'DNI del client' GROUP BY clients.dni;

