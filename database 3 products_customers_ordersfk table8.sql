CREATE TABLE Products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR NOT NULL,
    price DECIMAL NOT NULL,
    stock_quantity INT NOT NULL
)

SELECT * FROM Products


INSERT INTO Products (product_id,product_name, price, stock_quantity) VALUES (1,'Laptop', 75000, 10)
INSERT INTO Products (product_id,product_name, price, stock_quantity) VALUES (2,'Smartphone', 30000, 20)
*------------------------------------------------------------------------------------------------------*


CREATE TABLE Customers (
    customer_id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL,
    email VARCHAR NOT NULL,
    address VARCHAR)

SELECT * FROM Customers

INSERT INTO Customers ( customer_id,name, email, address) VALUES (101,'Rahul Rathod', 'rahulrathod.com', 'Nagpur'),

INSERT INTO Customers ( customer_id,name, email, address) VALUES (102,'Sushant Rathod', 'sushantrathod.com', 'Yavatamal');


CREATE TABLE Ordersfk (
    ordersfk_id SERIAL PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity INT NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
)

SELECT * FROM Ordersfk

INSERT INTO Ordersfk (ordersfk_id,customer_id, product_id, quantity) VALUES (01,101,1,10)

INSERT INTO Ordersfk (ordersfk_id,customer_id, product_id, quantity) VALUES (02,101,2,10)
