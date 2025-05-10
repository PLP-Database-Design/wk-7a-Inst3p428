QUESTION 1
--1 NORMALIZATION FORM
--Order Table
CREATE TABLE orders(
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(10)
);

--Product Table
CREATE TABLE products(
    OrderID INT,
    product_name VARCHAR(15),
    FOREIGN KEY (OrderID) REFERENCES orders(OrderID)   
);

QUESTION 2
--2 NORMALIZATION FORM
-- Customers
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerName VARCHAR(50)
);

-- Orders
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- OrderDetails
CREATE TABLE OrderDetails (
    OrderID INT,
    Product VARCHAR(50),
    Quantity INT,
    PRIMARY KEY (OrderID, Product),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);
