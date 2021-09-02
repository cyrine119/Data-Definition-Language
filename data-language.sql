-- Create
CREATE TABLE Product (
    Product_id VARCHAR2(20) CONSTRAINT pk_product PRIMARY KEY,
    Product_Name VARCHAR2(20) CONSTRAINT nn_product NOT NULL, 
    Price NUMBER CONSTRAINT chk_price CHECK (price>0)
);

CREATE TABLE Customer (
    Customer_id VARCHAR2(20) CONSTRAINT pk_customer PRIMARY KEY,
    Customer_Name VARCHAR2(20) CONSTRAINT nn_customer NOT NULL,
    Customer_Tel NUMBER
);

CREATE TABLE Orders (
    CONSTRAINT fk_Customer FOREIGN KEY (Customer_id) REFERENCES Customer (Customer_id),
    CONSTRAINT fk_Product FOREIGN KEY (Product_id) REFERENCES Product (Product_id),
    Quantity NUMBER,
    Total_amount NUMBER
);

-- SQL Commands 
ALTER TABLE Product ADD Category VARCHAR2(20); 
ALTER TABLE Orders ADD OrderDate DATE DEFAULT SYSDATE()

