CREATE DATABASE cours_work;

USE cours_work;
CREATE TABLE student(
    student_id VARCHAR(10)PRIMARY KEY,
    name VARCHAR(30)NOT NULL,
    age INT,
    gender VARCHAR(10)NOT NULL
);

CREATE TABLE course(
    course_id VARCHAR(30)PRIMARY KEY,
    student_id VARCHAR(30)NOT NULL,
    course_name VARCHAR(50)NOT NULL,
    teacher VARCHAR(20),
    week VARChar(10),
    FOREIGN KEY(student_id)REFERENCES student(student_id)
);
=============================
ALTER TABLE student
 MODIFY age INT DEFAULT'00';
=============================

INSERT INTO student(student_id, name, age, gender)VALUES
('id1','kamal','30','male'),
('id2','saduni','25','female'),
('id3','nimal','10','male');

INSERT INTO course(course_id, student_id, course_name, teacher, week)VALUES
('m1','id2','maths','dr.silva','4week'),
('s1','id1','sihala','mr.silva','3week'),
('e1','id1','english','ms.shoba','5week');

INSERT INTO student(student_id, name, gender)VALUES
('id4','nimal','male');

