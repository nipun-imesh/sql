CREATE DATABASE kade;
  USE kade;

  CREATE TABLE customer(
    id VARCHAR(20)PRIMARY KEY,
    name VARCHAR(50),
    addrass VARCHAR(75),
    age INT 
  );


  CREATE orders(
    order_id VARCHAR(30)PRIMARY KEY,
    customers_id VARCHAR(30)NOT NULL,
    date DATE NOT NULL,
    price DECIMAL(11,2) NOT NULL
    FOREIGN KEY (customers_id) REFERENCES customer(id)

  );