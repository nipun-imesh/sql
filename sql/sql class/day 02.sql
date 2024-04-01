CREATE DATABASE market;

USE market;

CREATE TABLE item (
    id INT,
    description VARCHAR(100),
    qty INT,
    price DECIMAL(10,2),
    date_bought DATE
);

-------------------------------------------------
-- Insert Data Batch
-------------------------------------------------
INSERT INTO item (id, description, qty, price, date_bought) VALUES
    ('001', 'biscuit', 10, 150.00, '2023-02-10'),
    ('002', 'soap', 15, 203.00, '2022-01-24');

-------------------------------------------------
-- Add constraint (NOT NULL)
-------------------------------------------------
ALTER TABLE customer 
    MODIFY customer_id INT NOT NULL;

-------------------------------------------------
-- Add constraint (UNIQUE)
-------------------------------------------------
ALTER TABLE customer 
    MODIFY customer_id INT UNIQUE;

-------------------------------------------------
-- Delete records (Null)
-------------------------------------------------
DELETE FROM customer WHERE customer_id IS NULL;
------------------------------------------------
 delete from item where item_id='2p';
------------------------------------------------
-------------------------------------------------
-- Add constraint (DEFAULT)
-------------------------------------------------

INSERT INTO customer VALUES (4 , 'saduni',Null);

ALTER TABLE customer
    MODIFY customer_address VARCHAR(100) DEFAULT 'Srilanka';   
---------------------------------------------------------
alter table orders_datals add constraint 
item_id  foreign key(item_id)references item(item_id)on update cascade on delete cascade;
---------------------------------------------------------
INSERT INTO customer(customer_id,customer_address) VALUES
    (5,'saduni'),
    (5,'piyumi');

-------------------------------------------------
-- Add constraint (FOREIGN KEY) 
-------------------------------------------------

CREATE TABLE orders (
    order_id VARCHAR(25) PRIMARY KEY,
    date DATE,
    customer_id INT,
    FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);

   ---- EX ----
         
        CREATE TABLE patients (
            id INT PRIMARY KEY,
            name VARCHAR(255) NOT NULL,
            address VARCHAR(255) NOT NULL
        );

        CREATE TABLE appointments (
            appointment_id INT PRIMARY KEY,
            patient_id INT NOT NULL,
            appointment_date DATE NOT NULL,
            FOREIGN KEY (patient_id) REFERENCES patients(id)
        );
alter table coustomer
    modify cus_id varchar(255)not nun;


