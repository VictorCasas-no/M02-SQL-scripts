
ALTER TABLE comandes_pizzes DROP FOREIGN KEY comandes_pizzes_ibfk_1;
ALTER TABLE comandes_pizzes DROP FOREIGN KEY comandes_pizzes_ibfk_2;

ALTER TABLE pizzes_masses DROP FOREIGN KEY pizzes_masses_ibfk_1;
ALTER TABLE pizzes_masses DROP FOREIGN KEY pizzes_masses_ibfk_2;

ALTER TABLE pizzes_ingredients DROP FOREIGN KEY pizzes_ingredients_ibfk_1;
ALTER TABLE pizzes_ingredients DROP FOREIGN KEY pizzes_ingredients_ibfk_2;

ALTER TABLE ingredients_al·lergogens DROP FOREIGN KEY ingredients_al·lergogens_ibfk_1;
ALTER TABLE ingredients_al·lergogens DROP FOREIGN KEY ingredients_al·lergogens_ibfk_2;

ALTER TABLE ingredients DROP FOREIGN KEY ingredients_ibfk_1;



ALTER TABLE comandes MODIFY COLUMN num_comanda INT UNSIGNED AUTO_INCREMENT;

ALTER TABLE pizzes MODIFY COLUMN id INT UNSIGNED AUTO_INCREMENT;

ALTER TABLE masses MODIFY COLUMN id INT UNSIGNED AUTO_INCREMENT;

ALTER TABLE al·lergogens MODIFY COLUMN id INT UNSIGNED AUTO_INCREMENT;

ALTER TABLE tipus_ingredients MODIFY COLUMN id INT UNSIGNED AUTO_INCREMENT;

ALTER TABLE ingredients MODIFY COLUMN id INT UNSIGNED AUTO_INCREMENT;




ALTER TABLE comandes_pizzes ADD CONSTRAINT comandes_pizzes_ibfk_1 FOREIGN KEY (id_pizza) REFERENCES pizzes(id);
ALTER TABLE comandes_pizzes ADD CONSTRAINT comandes_pizzes_ibfk_2 FOREIGN KEY (id_comandes) REFERENCES comandes(num_comanda);

ALTER TABLE pizzes_masses ADD CONSTRAINT pizzes_masses_ibfk_1 FOREIGN KEY (id_pizza) REFERENCES pizzes(id);
ALTER TABLE pizzes_masses ADD CONSTRAINT pizzes_masses_ibfk_2 FOREIGN KEY (id_massa) REFERENCES masses(id);

ALTER TABLE ingredients_al·lergogens ADD CONSTRAINT ingredients_al·lergogens_ibfk_1 FOREIGN KEY (id_ingredient) REFERENCES ingredients(id);
ALTER TABLE ingredients_al·lergogens ADD CONSTRAINT ingredients_al·lergogens_ibfk_2 FOREIGN KEY (id_alergogen) REFERENCES al·lergogens(id);

ALTER TABLE ingredients ADD CONSTRAINT ingredients_ibfk_1 FOREIGN KEY (id_tipus) REFERENCES tipus_ingredients(id);





ALTER TABLE comandes CHANGE estat estat ENUM('en preparació','lliurada','cancel·lada');






ALTER TABLE pizzes_ingredients MODIFY COLUMN grams_per_ingredient INT UNSIGNED;

ALTER TABLE pizzes_ingredients ADD CONSTRAINT chk_grams_per_ingredient CHECK (grams_per_ingredient BETWEEN 10 AND 30);

ALTER TABLE pizzes_ingredients ADD CONSTRAINT pizzes_ingredients_ibfk_1 FOREIGN KEY (id_ingredient) REFERENCES ingredients(id);
ALTER TABLE pizzes_ingredients ADD CONSTRAINT pizzes_ingredients_ibfk_2 FOREIGN KEY (id_pizza) REFERENCES pizzes(id);

