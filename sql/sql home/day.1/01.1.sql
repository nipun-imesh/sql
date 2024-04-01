CREATE DATABASE kade;
  USE kade;

  CREATE TABLE customer(
    id VARCHAR(20)PRIMARY KEY,
    name VARCHAR(50),
    addrass VARCHAR(75),
    age INT 
  );
 
CREATE TABLE orders (
    order_id VARCHAR(30)PRIMARY KEY,
    customer_id VARCHAR(30)NOT NULL,
    date DATE NOT NULL,
    price DECIMAL(11,2) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer(id)

  );


  INSERT INTO customer(id, name, addrass, age)VALUES
  ('vg01','oshan','trinco','21'),
  ('bg56','udara','horana','26');

INSERT INTO orders(order_id,customer_id,date,price)VALUES
('udg4589','bg56','2023-12-05','280.50'),
('udg4590','vg01','2023-06-07','500.00');

  INSERT INTO customer(id, name, age)VALUES
  ('vg0100','oshan','21'),
  ('bg5600','udara','26');
 ALTER TABLE customer MODIFY addrass varchar(75) DEFAULT'no addrass';