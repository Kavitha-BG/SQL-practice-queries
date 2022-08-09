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

INSERT INTO student (S_ID, NAME, AGE) VALUES ( 7, 'Bob', 94);