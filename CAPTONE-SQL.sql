CREATE TABLE IF NOT EXISTS Staff (
    staff_id INT PRIMARY KEY,
    staff_name TEXT,
    region TEXT,
    bonus_rate DECIMAL(4,2)
);

CREATE TABLE IF NOT EXISTS Clients (
    client_id INT PRIMARY KEY,
    client_name TEXT,
    location TEXT,
    loyalty_tier INT,
    assigned_staff_id INT,
    FOREIGN KEY (assigned_staff_id) REFERENCES Staff(staff_id)
);

CREATE TABLE IF NOT EXISTS Transactions (
    tx_id INT PRIMARY KEY,
    amount DECIMAL(10,2),
    tx_date DATE,
    client_id INT,
    staff_id INT,
    FOREIGN KEY (client_id) REFERENCES Clients(client_id),
    FOREIGN KEY (staff_id) REFERENCES Staff(staff_id)
);

-- 2. Insert fresh data
INSERT INTO Staff (staff_id, staff_name, region, bonus_rate)
VALUES
    (101, 'Alice Chen', 'North', 0.15),
    (102, 'Bob Miller', 'South', 0.13),
    (103, 'Charlie Davis', 'East', 0.11),
    (104, 'Diana Prince', 'West', 0.14),
    (105, 'Evan Wright', 'North', 0.13),
    (106, 'Fiona Grey', 'South', 0.12);

INSERT INTO Clients (client_id, client_name, location, loyalty_tier, assigned_staff_id)
VALUES
    (2001, 'TechCorp', 'North', 100, 101), 
    (2002, 'BioLabs', 'North', 200, 101),  
    (2003, 'GlobalLogistics', 'West', 200, 102),  
    (2004, 'RetailGiant', 'East', 300, 102),  
    (2005, 'StartupInc', 'South', 300, 104),  
    (2006, 'EduSystems', 'Berlin', 100, 106),  
    (2007, 'CloudNine', 'Moscow', 200, 105),  
    (2008, 'DataFlow', 'East', NULL, 103);

INSERT INTO Transactions (tx_id, amount, tx_date, client_id, staff_id)
VALUES
    (90001, 150.50, '2025-10-05', 2003, 102),
    (90002, 270.65, '2025-09-10', 2008, 101),
    (90003, 65.26,  '2025-10-05', 2001, 106),
    (90004, 110.50, '2025-08-17', 2006, 105),
    (90005, 948.50, '2025-09-10', 2003, 103),
    (90006, 2400.60, '2025-07-27', 2002, 104);

SELECT staff.staff_name, clients.client_name, client.location
FROM Clients
JOIN Clients ON Staff.name = client_name;

SELECT staff.staff_name, Clients.name
FROM staff
JOIN staff ON staff.Salesman_id = Salesman.Salesman_id;
