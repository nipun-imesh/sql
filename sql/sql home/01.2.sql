CREATE TABLE my(
    id VARCHAR(20) PRIMARY KEY,
    name VARCHAR(40),
    age INT,
    barthday DATE,
    salery DECIMAL(12,2)
);

CREATE TABLE othe(
    id VARCHAR(30),
    name VARCHAR(75),
    age INT,
    barthday DATE,
    salery DECIMAL(10,2),
    FOREIGN KEY (id) REFERENCES my(id)
);
INSERT INTO my(id, name, age, barthday, salery)VALUES
  ('a1','nipun','24','1999-10-25','3000.00'),
  ('a2','buddhi','18','2004-06-01','2000.50'),
  ('a3','indrani','45','1985-05-26','10000.00');

  INSERT INTO othe(id, name, age, barthday, salery)VALUES
  ('a1','nipun','24','1999-10-25','3000'),
    ('a2','buddhi','18','2004-06-01','2000.50'),
      ('a3','indrani','45','1985-05-26','10000.00');

      ALTER TABLE my
      MODIFY barthday VARCHAR(75) DEFAULT 'NO_BARTHDAY';

      INSERT INTO my(id, name, age, salery)VALUES
       ('a4','jayantha','45','45000');

       ALTER TABLE my
       MODIFY age INT NOT NULL;

    ALTER TABLE othe
    MODIFY barthday DATE UNIQUE;

    DELETE FROM othe WHERE barthday IS NUll;