/* Table Creation */
CREATE TABLE student
(
S_ID tinyint PRIMARY KEY,
NAME varchar(10) NOT NULL,
AGE tinyint CHECK(AGE>18),
GRADE decimal(2,2) DEFAULT 0.0
);

DESCRIBE student;

ALTER TABLE student ADD CONTACT_NUM INT NOT NULL; 

ALTER TABLE student DROP CONTACT_NUM;

ALTER TABLE student MODIFY age smallint;

ALTER TABLE student MODIFY AGE smallint;

DESCRIBE student;

INSERT INTO student VALUES ( 1, 'John', 22, 86 );

ALTER TABLE student MODIFY GRADE decimal(4,2) DEFAULT 0.0;

DESCRIBE student;

SELECT * FROM student;

INSERT INTO student VALUES ( 4, 'Jack', 20, 80 );

SELECT * FROM student;

SELECT S_ID FROM student;

INSERT INTO student VALUES ( 'Jonny', 3, 22, 86 );

INSERT INTO student VALUES ( 3, 'Jonny', 22, 86 );

SELECT * FROM student;

INSERT INTO student (NAME, S_ID, AGE, GRADE) VALUES ('Wick', 2, 25, 90);

INSERT INTO student VALUES ( 5, 'Andy', 21, 94);

INSERT INTO student VALUES ( 5, 'Andy', 21, 94 );

INSERT INTO student VALUES ( 6, 'Andy', 21, 94 );

INSERT INTO student (S_ID, AGE, GRADE) VALUES ( 5, 21, 94 );

INSERT INTO student (NAME, AGE, GRADE) VALUES ( 'Andy', 28, 75.6 );

INSERT INTO student (S_ID, NAME, AGE) VALUES ( 7, 'Bob', 94 );

SELECT * FROM student;

INSERT INTO student (S_ID, NAME, GRADE) VALUES ( 6, 'Alex', 98.9 );

/*Auto_increment*/ 
ALTER TABLE student MODIFY S_ID tinyint AUTO_INCREMENT;
DESCRIBE student;

SELECT * FROM student;

ALTER TABLE student MODIFY age smallint AUTO_INCREMENT;

INSERT INTO student( name, age, grade) VALUES ('Ram', 19, 99);

SELECT * FROM student;

INSERT INTO student VALUES(101, 'Mercy', 20, 79.4);

SELECT * FROM student;

INSERT INTO student VALUES( 'Mercy', 20, 79.4 );

DESCRIBE student;

INSERT INTO student (NAME, AGE, GRADE)VALUES( 'Sham', 20, 83.2 );


/* New table */ 
SHOW TABLES;

DROP TABLE student;

CREATE TABLE student
(
S_ID tinyint,
NAME varchar(10),
AGE tinyint,
GRADE decimal(2,2),
PRIMARY KEY(S_ID, NAME)
);

DESCRIBE student;

ALTER TABLE student DROP PRIMARY KEY;

ALTER TABLE student MODIFY GRADE decimal(4,2);

DESCRIBE student;

ALTER TABLE student ADD PRIMARY KEY ( S_ID, NAME);

INSERT INTO student VALUES(1, 'John', 21, 82.6);

Select * from student;

INSERT INTO student VALUES(2, 'John', 21, 82.6);

/* Duplicate key error*/
INSERT INTO student VALUES(2, 'Alex', 21, 82.6);

DROP TABLE student;

/* Foreign Key */ 
CREATE TABLE courses (
c_id varchar(5) PRIMARY KEY,
name varchar(10),
rating decimal(3,1));

CREATE TABLE student(
s_id tinyint PRIMARY KEY,
name varchar(10),
age tinyint,
grade decimal(4,2),
c_id varchar(5),
FOREIGN KEY (c_id) REFERENCES courses (c_id)
);

DESCRIBE student;

DESCRIBE courses;

INSERT INTO courses VALUES ('1J', 'Java', 4.0);

INSERT INTO courses VALUES ('2P', 'Python', 4.6);

INSERT INTO courses VALUES ('3JFS', 'Java FS', 4.8);

INSERT INTO courses VALUES ('4PFS', 'Python FS', 4.9);

SELECT * FROM courses;

INSERT INTO student VALUES (1, 'John', 21, 72,'1J');

INSERT INTO student VALUES (2, 'Wick', 21, 72, '1J' );

INSERT INTO student (s_id, name, age, grade) VALUES (3, 'Alex', 21, 72);

INSERT INTO student VALUES (4, 'Andy', 21, 94,'6JFS');

SELECT * FROM student;


