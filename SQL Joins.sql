
1. Create Sample Tables

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name TEXT,
    City TEXT
);
 
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    Product TEXT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);


INSERT INTO Customers VALUES
(1, 'Alice', 'Delhi'),
(2, 'Bob', 'Mumbai'),
(3, 'Charlie', 'Chennai'),
(4, 'David', 'Pune');


INSERT INTO Orders VALUES
(101, 1, 'Laptop'),
(102, 2, 'Phone'),
(103, 1, 'Tablet'),
(104, 3, 'Camera');

2. INNER JOIN

 Returns only matching rows from both tables.

SELECT Customers.Name, Orders.Product
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

Result: Only customers who placed orders.

3. LEFT JOIN

Returns all customers, even if they have no orders.

SELECT Customers.Name, Orders.Product
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

Result: Customers without orders will have `NULL` in the Product column.


4. RIGHT JOIN 

 Returns all orders, even if they don’t match a customer.

SELECT Customers.Name, Orders.Product
FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;


SELECT Customers.Name, Orders.Product
FROM Orders
LEFT JOIN Customers ON Customers.CustomerID = Orders.CustomerID;

(Swapping table order simulates a RIGHT JOIN.)


5. FULL JOIN

 Returns all customers and all orders, matching where possible.

SELECT Customers.Name, Orders.Product
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
UNION
SELECT Customers.Name, Orders.Product
FROM Orders
LEFT JOIN Customers ON Customers.CustomerID = Orders.CustomerID;


If you want, I can make a **single SQL script** containing all joins in one go, so you can run it and see all results step-by-step. That way, you won’t have to copy-paste queries separately.

Do you want me to prepare that combined script?
