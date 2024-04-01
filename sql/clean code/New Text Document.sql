CREATE TABLE customer (
    cust_id int primary key,
    name varchar(255),
    email varchar(255),
    address varchar(255),
    tel varchar(255)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    date DATE,
    cust_id INT,
    FOREIGN KEY (cust_id) REFERENCES customer(cust_id)
);

CREATE TABLE items (
    item_id INT PRIMARY KEY,
    name VARCHAR(255),
    description VARCHAR(255),
	prize DECIMAL(5,2)
);

CREATE TABLE order_items (
    order_id INT,
    item_id INT,
    quantity INT,
    PRIMARY KEY (order_id, item_id),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (item_id) REFERENCES items(item_id)
);


INSERT INTO customer (cust_id, name,email,address,tel) VALUES
	 ('001','oshan','ooshan@gmail.com','trinco','0777584578'),	
	 ('002','kamal','koshan@gmail.com','galle','0777584578'),
	 ('003','amal','aoshan@gmail.com','panadura','0777584578');

INSERT INTO orders (order_id,date,cust_id) VALUES
	 ('001','2024-02-02','001'),	
	 ('002','2024-05-06','002'),
	 ('003','2024-06-06','003');

INSERT INTO items (item_id,name,description,prize) VALUES
	 ('001','kitkat','good','152.00'),	
	 ('002','lolipop','better','7.00'),
	 ('003','candy','best','10.00');

INSERT INTO order_items (order_id, item_id, quantity) VALUES
    ('001', '001', 2),
    ('001', '002', 1),
    ('002', '003', 5),
    ('003', '001', 3),
    ('003', '003', 2);

DELETE FROM items WHERE item_id = 1;
DELETE FROM order_items WHERE item_id = 3;

ALTER TABLE order_items ADD CONSTRAINT 
item_id FOREIGN KEY(item_id) REFERENCES items(item_id) 
ON UPDATE CASCADE ON DELETE CASCADE;