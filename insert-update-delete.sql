-- EXERCISE 2
-- 1. Add a new supplier.
INSERT INTO Suppliers (CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone)
VALUES ('Golden Foods Co. (Test Only)', 'Emily Carter', 'Purchasing Manager', '123 Sunrise Blvd', 'Austin', 'TX', '73301', 'USA', '(512) 555-7890');

-- 2. Add a new product provided by that supplier
SELECT SupplierID FROM Suppliers WHERE CompanyName = 'Golden Foods Co. (Test Only)';

INSERT INTO Products (ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued)
VALUES ('Texas Chili Beans (Test Only)', 30, 2, '24 cans per case', 12.00, 50, 10, 5, 0);

-- 3. List all products and their suppliers.
SELECT p.ProductID, p.ProductName, s.CompanyName AS Supplier
FROM Products p
JOIN Suppliers s ON p.SupplierID = s.SupplierID
ORDER BY s.CompanyName, p.ProductName;

-- 4. Raise the price of your new product by 15%.
SELECT ProductID, ProductName, UnitPrice
FROM Products
WHERE ProductName = 'Texas Chili Beans (Test Only)';

START TRANSACTION;

UPDATE Products
SET UnitPrice = UnitPrice * 1.15
WHERE ProductName = 'Texas Chili Beans (Test Only)'
LIMIT 1;

SELECT ProductID, ProductName, UnitPrice
FROM Products
WHERE ProductName = 'Texas Chili Beans (Test Only)';

-- 5. List the products and prices of all products from that supplier.
SELECT ProductID, ProductName, UnitPrice
FROM Products
WHERE SupplierID = (
    SELECT SupplierID FROM Suppliers WHERE CompanyName = 'Golden Foods Co. (Test Only)'
);

-- 6. Delete the new product.
SELECT * FROM Products WHERE ProductName = 'Texas Chili Beans (Test Only)';

START TRANSACTION;

DELETE FROM Products
WHERE ProductName = 'Texas Chili Beans (Test Only)'
LIMIT 1;

SELECT * FROM Products WHERE ProductName = 'Texas Chili Beans (Test Only)';

-- 7. Delete the new supplier.
SELECT * FROM Products
WHERE SupplierID = (
    SELECT SupplierID FROM Suppliers WHERE CompanyName = 'Golden Foods Co. (Test Only)'
);

START TRANSACTION;

DELETE FROM Suppliers
WHERE CompanyName = 'Golden Foods Co. (Test Only)'
LIMIT 1;

SELECT * FROM Suppliers WHERE CompanyName = 'Golden Foods Co. (Test Only)';

-- 8. List all products.
SELECT * FROM Products;

-- 9. List all suppliers.
SELECT * FROM Suppliers;