CREATE TABLE IF NOT EXISTS street_eats (
    SHOP_NAME TEXT,
    CITY TEXT,
    STREET_FOOD_TYPE TEXT,
    RATING REAL,
    COST_LEVEL TEXT,
    SAFETY_GRADE TEXT
);

INSERT INTO street_eats (SHOP_NAME, CITY, STREET_FOOD_TYPE, RATING, COST_LEVEL, SAFETY_GRADE) VALUES 
    ('Midnight Ramen', 'Tokyo', 'Noodles', 4.8, '$$', 'A'),
    ('El Pastor', 'Mexico City', 'Tacos', 4.9, '$', 'A'),
    ('Crepe Escape', 'Paris', 'Dessert', 4.2, '$$', 'B'),
    ('Curry King', 'Mumbai', 'Chaats', 3.7, '$', 'C'),
    ('The Sizzler', 'Seoul', 'BBQ', 4.5, '$$$', 'A'),
    ('Waffle Wonder', 'Brussels', 'Pastry', 4.0, '$$', 'A'),
    ('Bao Wow', 'Shanghai', 'Dim Sum', 3.2, '$', 'B'),
    ('Pasta Point', 'Rome', 'Italian', 4.6, '$$$$', 'A'),
    ('Satay Stay', 'Bangkok', 'Skewer', 3.9, '$', '');

SELECT * FROM street_eats;

SELECT DISTINCT STREET_FOOD_TYPE FROM street_eats;

SELECT * FROM street_eats WHERE RATING >= 4;

SELECT * FROM street_eats WHERE SAFETY_GRADE = 'A';

SELECT * FROM street_eats WHERE SAFETY_GRADE = 'A' AND RATING >= 4;

SELECT * FROM street_eats WHERE SHOP_NAME LIKE '%Bao%';