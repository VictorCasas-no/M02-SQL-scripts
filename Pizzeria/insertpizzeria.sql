
INSERT INTO clients (dni, nom, adreça, telefon) VALUES
('123456789', 'Michael De Santa', '1010 Vinewood Blvd, Los Santos, San Andreas', '555123456'),
('234567890', 'Franklin Clinton', '3671 Wild Oats Drive, Los Santos, San Andreas', '555234567'),
('345678901', 'Trevor Philips', '1989 Mount Chiliad, Blaine County, San Andreas', '555345678'),
('456789012', 'Aiden Pearce', '1000 West Chicago Avenue, Chicago, IL', '555456789'),
('567890123', 'Marcus Holloway', '3333 Mission Street, San Francisco, CA', '555567890');


INSERT INTO comandes (preu_total, data, estat, dni_client) VALUES
(20.5, '2024-12-01', 'en preparació', '123456789'),
(35.0, '2024-12-02', 'lliurada', '234567890'),
(15.0, '2024-12-03', 'en preparació', '345678901'),
(45.0, '2024-12-04', 'cancel·lada', '456789012'),
(25.0, '2024-12-05', 'lliurada', '567890123');


INSERT INTO pizzes (nom, preu_base) VALUES
('Margarita', 8.5),
('Pepperoni', 10.0),
('Quatre Formatges', 12.0),
('Vegetariana', 9.5),
('Hawaiana', 11.0);


INSERT INTO masses (nom, preu) VALUES
('Fina', 2.0),
('Normal', 3.0),
('Gorda', 4.0),
('Integral', 3.5),
('Sense gluten', 5.0);


INSERT INTO al·lergogens (nom, descripcio) VALUES
('Gluten', 'Conté gluten'),
('Lactosa', 'Conté lactosa'),
('Fruits secs', 'Conté ametlles'),
('Sulfitos', 'Conté sulfits'),
('Ous', 'Conté ous');


INSERT INTO tipus_ingredients (nom, descripcio) VALUES
('Verdura', 'Ingredients vegetals'),
('Carn', 'Ingredients de origen animal'),
('Formatge', 'Ingredients làctics'),
('Salsa', 'Ingredients líquids'),
('Espècia', 'Ingredients per donar sabor');


INSERT INTO ingredients (nom, preu, descripcio, id_tipus) VALUES
('Tomàquet', 1.0, 'Tomàquet fresc', 1),
('Enciam', 0.5, 'Enciam fresc', 1),
('Pepperoni', 2.5, 'Pepperoni en rodanxes', 2),
('Mozzarella', 3.0, 'Formatge mozzarella', 3),
('Olives', 1.5, 'Olives negres', 1);


INSERT INTO pizzes_masses (id_pizza, id_massa) VALUES
(1, 2),
(2, 3),
(3, 4),
(4, 1),
(5, 5);


INSERT INTO comandes_pizzes (id_pizza, id_comandes) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);


INSERT INTO ingredients_al·lergogens (id_ingredient, id_alergogen) VALUES
(1, 1),
(2, 2),
(3, 5),
(4, 1),
(5, 3);


INSERT INTO pizzes_ingredients (id_pizza, id_ingredient, grams_per_ingredient) VALUES
(1, 1, 20),
(1, 4, 25),
(2, 3, 30),
(3, 4, 10),
(5, 5, 15); 

