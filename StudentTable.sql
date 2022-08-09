CREATE TABLE student
(
S_ID tinyint PRIMARY KEY,
NAME varchar(10) NOT NULL,
AGE tinyint CHECK(AGE>18),
GRADE decimal(2,2) DEFAULT 0.0
);

DESCRIBE student;

