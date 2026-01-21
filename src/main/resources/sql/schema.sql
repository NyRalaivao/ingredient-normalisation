create type dish_type as enum ('STARTER', 'MAIN', 'DESSERT');


create table dish
(
    id        serial primary key,
    name      varchar(255),
    dish_type dish_type
);

create type ingredient_category as enum ('VEGETABLE', 'ANIMAL', 'MARINE', 'DAIRY', 'OTHER');

create table ingredient
(
    id       serial primary key,
    name     varchar(255),
    price    numeric(10, 2),
    category ingredient_category,
    id_dish  int references dish (id)
);

alter table dish
    add column if not exists price numeric(10, 2);


alter table ingredient
    add column if not exists required_quantity numeric(10, 2);

CREATE TYPE unit_type AS ENUM ('pcs', 'kg', 'l');


CREATE TABLE dish_ingredient (
    id SERIAL PRIMARY KEY,
    id_dish INT NOT NULL,
    id_ingredient INT NOT NULL,
    quantity_required NUMERIC NOT NULL,
    unit unit_type NOT NULL,

    CONSTRAINT fk_dish
    FOREIGN KEY (id_dish)
    REFERENCES dish(id)
    ON DELETE CASCADE,

    CONSTRAINT fk_ingredient
    FOREIGN KEY (id_ingredient)
    REFERENCES ingredient(id)
    ON DELETE CASCADE,

    CONSTRAINT unique_dish_ingredient
    UNIQUE (id_dish, id_ingredient)
);

UPDATE dish SET price = 3500.00 WHERE id = 1;
UPDATE dish SET price = 12000.00 WHERE id = 2;
UPDATE dish SET price = NULL WHERE id = 3;
UPDATE dish SET price = 8000.00 WHERE id = 4;
UPDATE dish SET price = NULL WHERE id = 5;