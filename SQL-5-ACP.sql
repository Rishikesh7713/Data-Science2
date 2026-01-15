-- Creating a table for Electronic Products
CREATE TABLE IF NOT EXISTS TECH_INVENTORY (
    ITEM_ID INTEGER PRIMARY KEY,
    MODEL_NAME TEXT NOT NULL,
    BRAND_ID INTEGER,
    CATEGORY_NAME TEXT,
    STOCK_QUANTITY INTEGER,
    UNIT_PRICE REAL
);

-- Inserting fresh data into the inventory
INSERT INTO TECH_INVENTORY (ITEM_ID, MODEL_NAME, BRAND_ID, CATEGORY_NAME, STOCK_QUANTITY, UNIT_PRICE) VALUES
    (101, 'MacBook Pro 14', 501, 'Laptops', 15, 1999.99),
    (102, 'Galaxy S24 Ultra', 502, 'Smartphones', 30, 1299.50),
    (103, 'WH-1000XM5 Headphones', 503, 'Audio', 45, 348.00),
    (104, 'iPad Air', 501, 'Tablets', 22, 599.00),
    (105, 'Mechanical Keyboard K3', 504, 'Peripherals', 60, 89.95);

SELECT COUNT(MODEL_NAME) AS Product_Count
FROM TECH_INVENTORY;

SELECT AVG(UNIT_PRICE) AS Average
FROM TECH_INVENTORY;

SELECT SUM(UNIT_PRICE) AS  Total_Price
FROM TECH_INVENTORY;