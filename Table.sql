CREATE TABLE students (
   RNO TEXT PRIMARY KEY,
   SNAME TEXT,
   AGE INTEGER,
   CITY TEXT
);

INSERT INTO students (RNO, SNAME, AGE, CITY) VALUES
('S1', 'Clark', 20, 'London'),
('S2', 'Bruce', 10, 'Paris'),
('S3', 'Wayne', 30, 'Paris'),
('S4', 'Kent', 20, 'London'),
('S5', 'Fox', 30, 'Athens');
SELECT * FROM students;