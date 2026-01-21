insert into dish (id, name, dish_type)
values (1, 'Salaide fraîche', 'STARTER'),
       (2, 'Poulet grillé', 'MAIN'),
       (3, 'Riz aux légumes', 'MAIN'),
       (4, 'Gâteau au chocolat ', 'DESSERT'),
       (5, 'Salade de fruits', 'DESSERT');


insert into ingredient (id, name, category, price, id_dish)
values (1, 'Laitue', 'VEGETABLE', 800.0, 1),
       (2, 'Tomate', 'VEGETABLE', 600.0, 1),
       (3, 'Poulet', 'ANIMAL', 4500.0, 2),
       (4, 'Chocolat ', 'OTHER', 3000.0, 4),
       (5, 'Beurre', 'DAIRY', 2500.0, 4);



update dish
set price = 2000.0
where id = 1;

update dishf
set price = 6000.0
where id = 2;


CREATE TYPE dish_type AS ENUM ('STARTER', 'MAIN', 'DESSERT');

CREATE TYPE ingredient_category AS ENUM (
    'VEGETABLE',
    'MEAT',
    'DAIRY',
    'OIL',
    'SPICE',
    'OTHER'
    );

CREATE TYPE unit_type AS ENUM ('pcs', 'kg', 'l');


INSERT INTO dish_ingredient (id, id_dish, id_ingredient, quantity_required, unit)
VALUES
    (1, 1, 1, 0.20, 'kg'),
    (2, 1, 2, 0.15, 'kg'),
    (3, 2, 3, 1.00, 'kg'),
    (4, 4, 4, 0.30, 'kg'),
    (5, 4, 5, 0.20, 'kg');