CREATE DATABASE social_network;

USE social_natwork;

CREATE TABLE user(
 user_id VARCHAR(50)PRIMARY KEY,
 use_name VARCHAR(60)NOT NULL,
 use_email VARCHAR(25),
 use_pasword VARCHAR(30)

);


CREATE TABLE post(
  post_id VARCHAR(20)PRIMARY KEY,
  use_id VARCHAR(50),
  contact INT,
  use_date DATE,
  FOREIGN KEY (use_id) REFERENCES user(user_id) 

);

CREATE TABLE comments(
    comments_id VARCHAR(30)PRIMARY KEY,
    post_id VARCHAR(20),
    user_id varchar(50),
    comment VARCHAR(100),
    type_date DATE,
    FOREIGN KEY(post_id)REFERENCES post(post_id),
    FOREIGN KEY(user_id)REFERENCES user(user_id)
);

INSERT INTO user(user_id, use_name, use_email, use_pasword)VALUES
('1','nipun','123@gmail.com','pasword1'),
('2','oshan','456@gmail.com','pasword2'),
('3','udara','789@gmail.com','paswort3');

INSERT  INTO post(post_id, use_id, contact, use_date)VALUES
('a1','1','078123','2024-01-01'),
('a2','2','070123','2024-02-02'),
('a3','3','071123','2024-03-03');

INSERT INTO comments(comments_id, post_id, user_id, comment,type_date)VALUES
('c1','a2','2','hello','2024-05-06'),
('c2','a3','1','hi.!','2024-06-07'),
('c3','a1','1','bro..','2024-07-01');


ALTER TABLE comments
MODIFY comment VARCHAR(100)NOT NULL;

ALTER TABLE user
MODIFY use_email VARCHAR(25) DEFAULT'NO EMAIL';


ALTER TABLE user
MODIFY use_pasword VARCHAR(30)UNIQUE;

ALTER TABLE post
MODIFY contact INT NOT NULL;

ALTER TABLE post
MODIFY use_date DATE DEFAULT'0001-01-01';