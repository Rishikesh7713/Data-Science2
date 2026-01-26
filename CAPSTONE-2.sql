CREATE TABLE IF NOT EXISTS nomnomMM (
    NAME TEXT,
    NEIGHBOURHOOD TEXT,
    CUISINE TEXT,
    REVIEW REAL,
    PRICE TEXT,
    HEALTH TEXT
);

INSERT INTO nomnomMM (NAME, NEIGHBOURHOOD, CUISINE, REVIEW, PRICE, HEALTH) VALUES 
    ('Peter', 'Brooklyn', 'Steak', 4.4, '$$$$', 'A'),
    ('Jongra', 'Midtown', 'Korean', 3.5, '$$', 'A'),
    ('Pochra', 'Midtown', 'Pizza', 4, '$$$', 'B'),
    ('Lighthouse', 'Queens', 'Chinese', 3.9, '$', 'A'),
    ('Minca', 'Midtown', 'American', 4.6, '$$$', ''),
    ('Marea', 'Chinatown', 'Chinese', 3.0, '$$', ''),
    ('Dirty Candy', 'Uptown', 'Italian', 4.9, '$$$$', 'B'),
    ('Di Fara Pizza', 'Brooklyn', 'Pizza', 3.8, '$$$', 'A'),
    ('Golden Unicorn', 'Uptown', 'Italian', 3.8, '$$', 'A');

SELECT * FROM nomnomMM;

SELECT DISTINCT NEIGHBOURHOOD FROM nomnomMM;

SELECT DISTINCT CUISINE FROM nomnomMM;

SELECT * FROM nomnomMM WHERE CUISINE = 'Chinese';

SELECT * FROM nomnomMM WHERE REVIEW >= 4;

SELECT * FROM nomnomMM WHERE CUISINE = 'Italian' AND PRICE = '$$$';

SELECT * FROM nomnomMM WHERE NAME LIKE '%Candy%';

SELECT * FROM nomnomMM
WHERE NEGHBOURHOOD IN ('Midtown', 'Downtown', 'Chinatown');

SELECT * FROM nomnomMM ORDER BY REVIEW DESC LIMIT 4;