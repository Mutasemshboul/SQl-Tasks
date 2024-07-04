create schema TaskOne

CREATE TABLE TaskOne.Customers (
    CustomerID INT IDENTITY(1,1) PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    PhoneNumber VARCHAR(20),
    Address VARCHAR(255),
    City VARCHAR(50),
    State VARCHAR(50),
    PostalCode VARCHAR(10),
    Country VARCHAR(50),
    CreatedAt DATETIME DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE TaskOne.Orders (
    OrderID INT IDENTITY(1,1) PRIMARY KEY,
    CustomerID INT,
    OrderDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    ShippingAddress VARCHAR(255),
    TotalAmount DECIMAL(10, 2),
    Status VARCHAR(50),
    FOREIGN KEY (CustomerID) REFERENCES TaskOne.Customers(CustomerID)
);


CREATE TABLE TaskOne.Products (
    ProductID INT IDENTITY(1,1) PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Description TEXT,
    Price DECIMAL(10, 2) NOT NULL,
    StockQuantity INT,
    CreatedAt DATETIME DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE TaskOne.Employees (
    EmployeeID INT IDENTITY(1,1) PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    PhoneNumber VARCHAR(20),
    HireDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    Position VARCHAR(50),
    Salary DECIMAL(10, 2),
    ManagerID INT,
    FOREIGN KEY (ManagerID) REFERENCES TaskOne.Employees(EmployeeID)
);