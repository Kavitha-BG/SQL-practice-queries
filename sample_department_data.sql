/*
Sample data for the Introduction to Oracle SQL course
*/

/*
DROP TABLE customer_order;
DROP TABLE customer;
DROP TABLE product;
DROP TABLE employee;
DROP TABLE department;
*/

CREATE TABLE department (
  department_id INT(5),
  department_name VARCHAR(100),
  CONSTRAINT pk_dept PRIMARY KEY (department_id)
);
DESCRIBE department;

CREATE TABLE employee (
  employee_id INT(5),
  first_name VARCHAR(100),
  last_name VARCHAR(100),
  salary INT(8),
  department_id INT,
  manager_id INT(5),
  hire_date DATE,
  CONSTRAINT pk_emp PRIMARY KEY (employee_id),
  CONSTRAINT fk_emp_dept FOREIGN KEY (department_id) 
  REFERENCES department(department_id)
);

DESCRIBE employee;


CREATE TABLE product (
  product_id INT(5),
  product_name VARCHAR(100),
  price decimal(10, 2),
  department_id INT(5),
  CONSTRAINT pk_prod PRIMARY KEY (product_id),
  CONSTRAINT fk_prod_dept FOREIGN KEY (department_id) REFERENCES department(department_id)
);
DESCRIBE product;

CREATE TABLE customer (
  customer_id INT(5),
  first_name VARCHAR(100),
  last_name VARCHAR(100),
  address_state VARCHAR(10),
  email_address VARCHAR(350),
  CONSTRAINT pk_cust PRIMARY KEY (customer_id)
);
DESCRIBE customer;


CREATE TABLE customer_order (
  order_id INT(5),
  customer_id INT(5),
  product_id INT(5),
  order_date DATE,
  CONSTRAINT pk_order PRIMARY KEY (order_id),
  CONSTRAINT fk_order_cust FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
  CONSTRAINT fk_order_prod FOREIGN KEY (product_id) REFERENCES product(product_id)
);
DESCRIBE customer_order;



/*
Sample data
*/

/*Department*/
SELECT * FROM department;

INSERT INTO department (department_id, department_name) VALUES (1, 'Executive');
INSERT INTO department (department_id, department_name) VALUES (2, 'Sales');
INSERT INTO department (department_id, department_name) VALUES (3, 'Customer Support');
INSERT INTO department (department_id, department_name) VALUES (4, 'Hardware Development');
INSERT INTO department (department_id, department_name) VALUES (5, 'Software Development');
INSERT INTO department (department_id, department_name) VALUES (6, 'Marketing');
INSERT INTO department (department_id, department_name) VALUES (7, 'Finance');
INSERT INTO department (department_id, department_name) VALUES (8, 'Legal');
INSERT INTO department (department_id, department_name) VALUES (9, 'Maintenance');


/*Employee*/
SELECT * FROM employee;

INSERT INTO employee (employee_id, first_name, last_name, salary, department_id, manager_id, hire_date) VALUES (1, 'Michelle', 'Foster', 48000, 8, 162, STR_TO_DATE('27-08-2011','%d-%m-%Y'));
INSERT INTO employee (employee_id, first_name, last_name, salary, department_id, manager_id, hire_date) VALUES (2, 'Cheryl', 'Turner', 79000, 3, 99, STR_TO_DATE('2-1-2011','%d-%m-%Y'));
INSERT INTO employee (employee_id, first_name, last_name, salary, department_id, manager_id, hire_date) VALUES (3, 'Carolyn', 'Hudson', 47000, 7, 199, STR_TO_DATE('4-12-2016','%d-%m-%Y'));
INSERT INTO employee (employee_id, first_name, last_name, salary, department_id, manager_id, hire_date) VALUES (4, 'Patrick', 'Berry', 51000, 3, 159, STR_TO_DATE('12-10-2011','%d-%m-%Y'));
INSERT INTO employee (employee_id, first_name, last_name, salary, department_id, manager_id, hire_date) VALUES (5, 'Doris', 'Powell', 117000, 1, NULL, STR_TO_DATE('15-11-2011','%d-%m-%Y'));
INSERT INTO employee (employee_id, first_name, last_name, salary, department_id, manager_id, hire_date) VALUES (6, 'Jessica', 'Elliott', 21000, 7, 70, STR_TO_DATE('2-07-2010','%d-%m-%Y'));
INSERT INTO employee (employee_id, first_name, last_name, salary, department_id, manager_id, hire_date) VALUES (7, 'Sean', 'Burns', 51000, 6, 37, STR_TO_DATE('3-10-2010','%d-%m-%Y'));
INSERT INTO employee (employee_id, first_name, last_name, salary, department_id, manager_id, hire_date) VALUES (8, 'Ann', 'Bowman', 34000, 7, 187, STR_TO_DATE('20-05-2010','%d-%m-%Y'));
INSERT INTO employee (employee_id, first_name, last_name, salary, department_id, manager_id, hire_date) VALUES (9, 'Kathleen', 'Jones', 92000, 7, 131, STR_TO_DATE('15-03-2015','%d-%m-%Y'));
INSERT INTO employee (employee_id, first_name, last_name, salary, department_id, manager_id, hire_date) VALUES (10, 'Scott', 'Cruz', 32000, 8, 170, STR_TO_DATE('3-07-2014','%d-%m-%Y'));
INSERT INTO employee (employee_id, first_name, last_name, salary, department_id, manager_id, hire_date) VALUES (11, 'Evelyn', 'Gonzalez', 118000, 5, 177, STR_TO_DATE('13-07-2013','%d-%m-%Y'));
INSERT INTO employee (employee_id, first_name, last_name, salary, department_id, manager_id, hire_date) VALUES (12, 'Stephen', 'Hudson', 63000, 4, 133, STR_TO_DATE('22-12-2016','%d-%m-%Y'));


/*Product*/
SELECT * FROM product;

INSERT INTO product (product_id, product_name, price, department_id) VALUES (1, 'Monitor', 149.95, 4);
INSERT INTO product (product_id, product_name, price, department_id) VALUES (2, 'Desk', 110.9, 4);
INSERT INTO product (product_id, product_name, price, department_id) VALUES (3, 'Chair', 79.95, 4);
INSERT INTO product (product_id, product_name, price, department_id) VALUES (4, 'Accounting Plus', 60.45, 5);
INSERT INTO product (product_id, product_name, price, department_id) VALUES (5, 'Microsoft Office', 121.15, 5);
INSERT INTO product (product_id, product_name, price, department_id) VALUES (6, 'Antivirus Extreme', 48.5, 5);
INSERT INTO product (product_id, product_name, price, department_id) VALUES (7, 'Photo Editing Pro', 250, 5);
INSERT INTO product (product_id, product_name, price, department_id) VALUES (8, 'Web Tools 4', 202.5, 5);



/*Customer*/
SELECT * FROM department;

INSERT INTO customer (customer_id, first_name, last_name, address_state, email_address) VALUES (1, 'Teresa', 'Hudson', 'NY', 'thudson@abc.com');
INSERT INTO customer (customer_id, first_name, last_name, address_state, email_address) VALUES (2, 'Fred', 'Montgomery', 'CA', 'fmont@gmail.com');
INSERT INTO customer (customer_id, first_name, last_name, address_state, email_address) VALUES (3, 'Lois', 'Lawson', 'OR', 'lois_law@outlook.com');
INSERT INTO customer (customer_id, first_name, last_name, address_state, email_address) VALUES (4, 'Alice', 'Perry', 'SC', 'aliceperry');
INSERT INTO customer (customer_id, first_name, last_name, address_state, email_address) VALUES (5, 'Ralph', 'Montgomery', 'TX', 'ralph_mont25@gmail.com');
INSERT INTO customer (customer_id, first_name, last_name, address_state, email_address) VALUES (6, 'Dorothy', 'Armstrong', 'OR', 'abc123@abc.com');
INSERT INTO customer (customer_id, first_name, last_name, address_state, email_address) VALUES (7, 'Fred', 'Wallace', 'NY', 'wallacef@testwebsite.co.uk');
INSERT INTO customer (customer_id, first_name, last_name, address_state, email_address) VALUES (8, 'Joseph', 'Bell', 'FL', 'jbell@comm.edu');
INSERT INTO customer (customer_id, first_name, last_name, address_state, email_address) VALUES (9, 'Lois', 'Martinez', 'CALIF', 'loismar@awe.com');
INSERT INTO customer (customer_id, first_name, last_name, address_state, email_address) VALUES (10, 'Robert', 'Rice', 'IN', 'robrice123');



/*Customer Order*/
SELECT * FROM customer_order;

INSERT INTO customer_order (order_id, customer_id, product_id, order_date) VALUES (1, 3, 2, STR_TO_DATE('18-12-2016','%d-%m-%Y'));
INSERT INTO customer_order (order_id, customer_id, product_id, order_date) VALUES (2, 5, 6, STR_TO_DATE('1-06-2015','%d-%m-%Y'));
INSERT INTO customer_order (order_id, customer_id, product_id, order_date) VALUES (3, 6, 5, STR_TO_DATE('26-09-2016','%d-%m-%Y'));
INSERT INTO customer_order (order_id, customer_id, product_id, order_date) VALUES (4, 9, 1, STR_TO_DATE('8-09-2015','%d-%m-%Y'));
INSERT INTO customer_order (order_id, customer_id, product_id, order_date) VALUES (5, 7, 2, STR_TO_DATE('13-04-2016','%d-%m-%Y'));
INSERT INTO customer_order (order_id, customer_id, product_id, order_date) VALUES (6, 5, 7, STR_TO_DATE('4-02-2015','%d-%m-%Y'));
INSERT INTO customer_order (order_id, customer_id, product_id, order_date) VALUES (7, 9, 7, STR_TO_DATE('11-04-2016','%d-%m-%Y'));
INSERT INTO customer_order (order_id, customer_id, product_id, order_date) VALUES (8, 6, 8, STR_TO_DATE('27-05-2015','%d-%m-%Y'));
INSERT INTO customer_order (order_id, customer_id, product_id, order_date) VALUES (9, 2, 7, STR_TO_DATE('23-01-2017','%d-%m-%Y'));
INSERT INTO customer_order (order_id, customer_id, product_id, order_date) VALUES (10, 8, 7, STR_TO_DATE('7-11-2015','%d-%m-%Y'));
INSERT INTO customer_order (order_id, customer_id, product_id, order_date) VALUES (11, 2, 2, STR_TO_DATE('9-06-2016','%d-%m-%Y'));
INSERT INTO customer_order (order_id, customer_id, product_id, order_date) VALUES (12, 9, 7, STR_TO_DATE('4-01-2015','%d-%m-%Y'));
INSERT INTO customer_order (order_id, customer_id, product_id, order_date) VALUES (13, 5, 5, STR_TO_DATE('22-04-2015','%d-%m-%Y'));
INSERT INTO customer_order (order_id, customer_id, product_id, order_date) VALUES (14, 9, 2, STR_TO_DATE('14-09-2016','%d-%m-%Y'));
INSERT INTO customer_order (order_id, customer_id, product_id, order_date) VALUES (15, 7, 1, STR_TO_DATE('7-12-2015','%d-%m-%Y'));
INSERT INTO customer_order (order_id, customer_id, product_id, order_date) VALUES (16, 5, 4, STR_TO_DATE('17-10-2015','%d-%m-%Y'));
INSERT INTO customer_order (order_id, customer_id, product_id, order_date) VALUES (17, 9, 6, STR_TO_DATE('14-03-2015','%d-%m-%Y'));


COMMIT;

/*
SELECT * FROM employee;
SELECT * FROM department;
SELECT * FROM customer;
SELECT * FROM product;
SELECT * FROM customer_order;
*/

/* Where clause */
Select employee_id, first_name
FROM employee
WHERE first_name = 'Jessica';

/*Comparison operator <>, >, <, >=, <= */
Select employee_id, first_name, last_name
FROM employee
WHERE employee_id >= 5;


/* Like operator %, _ */
Select employee_id, first_name,last_name
FROM employee
WHERE last_name LIKE 'Bu%' ;

SELECT * FROM employee;

Select employee_id, first_name, last_name
FROM employee
WHERE last_name LIKE '%e%' ;

Select employee_id, first_name
FROM employee
WHERE first_name LIKE 'An_' ;


/*Filtering on Date values ' ', use function */
Select *
FROM employee
WHERE hire_date = '03-10-2010' ;

/* need to display date formate*/
Select value
FROM SYS.NLS_DATABASE_PARAMETERS
WHERE parameter = 'NLS_DATE_FORMAT' ;

Select *
FROM employee
WHERE hire_date < '01-10-2010' ;


/* multiple filters - AND, OR,  */
Select employee_id, first_name, last_name, salary, department_id, hire_date
FROM employee
WHERE first_name = 'Scott' AND last_name = 'Cruz' ;

Select employee_id, first_name, last_name, salary, department_id, hire_date
FROM employee
WHERE first_name = 'Patrick' OR last_name = 'Cruz' ;


Select employee_id, first_name, last_name, salary, department_id, hire_date
FROM employee
WHERE first_name = 'Barbara' 
AND (hire_date < '01-12-2014'
OR salary < 70000 );

/* NULL & NOT NULL  */
Select employee_id, first_name, last_name, salary, department_id, hire_date
FROM employee
WHERE salary IS NULL;

Select employee_id, first_name, last_name, salary, department_id, hire_date
FROM employee
WHERE salary IS NOT NULL;


/* DISTINCT */
Select last_name
FROM employee;

Select DISTINCT last_name, department_id
FROM employee;


/* IN & NOT IN*/
Select employee_id, first_name, last_name, salary, hire_date
FROM employee
WHERE last_name = 'Foster'
OR last_name = 'Elliott'
OR last_name = 'Mitchell'
OR last_name = 'Perry'
OR last_name = 'Lawson';

Select employee_id, first_name, last_name, salary, hire_date
FROM employee 
WHERE last_name IN ( 'Foster', 'Elliott', 'Mitchell', 'Perry', 'Lawson' );

Select employee_id, first_name, last_name, salary, hire_date
FROM employee 
WHERE last_name NOT IN( 'Foster', 'Elliott', 'Mitchell', 'Perry', 'Lawson' );


/* BETWEEN & NOT BETWEEN */
Select employee_id, first_name, last_name, salary, hire_date
FROM employee 
WHERE hire_date >= '01-JAN-2016'
AND hire_date <= '31-DEC-2016';

Select employee_id, first_name, last_name, salary, hire_date
FROM employee 
WHERE hire_date BETWEEN '01-01-2015' AND '31-12-2016';

Select employee_id, first_name, last_name, salary, hire_date
FROM employee 
WHERE employee_id BETWEEN 1 AND 10;

Select employee_id, first_name, last_name, salary, hire_date
FROM employee 
WHERE hire_date NOT BETWEEN '01-JAN-2016' AND '31-DEC-2016';

/* ALL keyword  */
Select employee_id, first_name, last_name, salary
FROM employee 
WHERE salary > 30000
AND salary > 40000
AND salary > 50000;

Select employee_id, first_name, last_name, salary
FROM employee 
WHERE salary > ALL(30000, 40000,50000);

Select employee_id, first_name, last_name, salary
FROM employee 
WHERE salary < ANY(30000, 40000,50000);

Select employee_id, first_name, last_name, salary
FROM employee 
WHERE salary <> ANY(30000, 40000,50000);



/* ORDER BY- sorting values*/
Select employee_id, first_name, last_name, salary
FROM employee 
ORDER BY last_name DESC;

Select employee_id, first_name, last_name, salary
FROM employee 
ORDER BY salary;

/* Sorting multiple columns */
Select employee_id, first_name, last_name, salary, hire_date
FROM employee 
ORDER BY hire_date ASC, employee_id DESC;



/* SET Operator  & UNION */
Select 'Employee', first_name, last_name 
FROM employee
UNION 
SELECT 'Customer',  first_name, last_name
FROM customer
ORDER BY 1, 2;

/* UNION ALL */
Select first_name, last_name 
FROM employee
UNION ALL
SELECT first_name, last_name
FROM customer
ORDER BY 1, 2;

/* INTERSECT */
SELECT first_name, last_name 
FROM employee
INTERSECT
SELECT first_name, last_name
FROM customer;

/* MINUS operator */
Select first_name, last_name 
FROM employee
MINUS
SELECT first_name, last_name
FROM customer;


Select first_name, last_name, salary
FROM employee
WHERE salary BETWEEN 28000 AND 40000
UNION
(Select first_name, last_name, salary
FROM employee
WHERE salary BETWEEN 20000 AND 30000
INTERSECT
Select first_name, last_name, salary
FROM employee
WHERE salary BETWEEN 30000 AND 55000)
MINUS
Select first_name, last_name, salary
FROM employee
WHERE salary BETWEEN 31000 AND 33000;



/* GROUP BY with multiple columns */
SELECT last_name, department_id, count(*)
FROM employee
GROUP BY last_name, department_id
ORDER BY COUNT(*) DESC ;

SELECT first_name, last_name, count(*)
FROM employee
GROUP BY first_name, last_name
ORDER BY COUNT(*) DESC ;

SELECT first_name, last_name, department_id, COUNT(*)
FROM employee
GROUP BY first_name, last_name, department_id
ORDER BY COUNT(*) DESC ;


/* GROUP BY with HAVING*/
SELECT last_name, COUNT(*)
FROM employee
GROUP BY last_name
HAVING COUNT(*) > 1;

SELECT first_name, last_name, COUNT(*)
FROM employee
GROUP BY first_name, last_name
HAVING COUNT(*) >1;


/*SUM function*/
SELECT SUM(salary)
FROM employee; 

SELECT SUM(price)
FROM product;

SELECT department_id, SUM(salary)
FROM employee
GROUP BY department_id
ORDER BY SUM(salary) DESC;


/* MAX & MIN function */
SELECT MAX(salary)
FROM employee;

SELECT MIN(salary)
FROM employee;

SELECT MAX(salary), MIN(salary)
FROM employee;

SELECT department_id, MAX(salary)
FROM employee
GROUP BY department_id;

SELECT department_id, MIN(salary)
FROM employee
GROUP BY department_id;

SELECT MIN(hire_date)
FROM employee;

SELECT MAX(hire_date)
FROM employee;


/* AVG function */
SELECT department_id, AVG(salary)
FROM employee
GROUP BY department_id
ORDER BY AVG(salary);

SELECT AVG(hire_date)
FROM employee;


/* Table aliases */
SELECT employee_id, first_name, last_name
FROM employee;

SELECT employee_id, first_name, last_name, e.salary
FROM employee e
WHERE e.salary > 30000;


/* Column Alias */
SELECT employee_id, first_name, last_name, e.salary AS "annual salary"
FROM employee e;

SELECT employee_id, first_name, last_name, e.salary AS "annual_salary", e.salary/12 AS "monthly_salary"
FROM employee e;

SELECT department_id, COUNT(*) AS employee_count
FROM employee
GROUP BY department_id
ORDER BY department_id;

COMMIT;
/* Joins */
SELECT e.employee_id,
e.first_name,
e.last_name,
d.department_name,
d.department_id,
e.salary
FROM employee e
JOIN department d ON e.department_id = d.department_id
WHERE e.salary > 60000;


/* INNER JOIN */
SELECT 
c.customer_id,
c.first_name,
c.last_name,
co.order_date
FROM customer c
INNER JOIN customer_order co ON c.customer_id = co.customer_id;


/* LEFT OUTER JOIN */
SELECT 
d.department_id,
d.department_name,
e.employee_id,
e.first_name,
e.last_name
FROM department d 
LEFT JOIN employee e ON d.department_id = e.department_id 
ORDER BY d.department_id;

SELECT *
FROM employee
WHERE department_id = 9;

/*RIGHT OUTER JOIN */
SELECT 
d.department_id,
d.department_name,
e.employee_id,
e.first_name,
e.last_name
FROM department d 
RIGHT JOIN employee e ON d.department_id = e.department_id 
ORDER BY d.department_id;


/*FULL OUTER JOIN */
SELECT 
d.department_id,
d.department_name,
e.employee_id,
e.first_name,
e.last_name
FROM department d 
FULL JOIN employee e ON d.department_id = e.department_id 
ORDER BY d.department_id, e.employee_id ;

/*NATURAL JOIN */
SELECT 
e.employee_id,
e.first_name,
e.last_name,
department_id,
d.department_name
FROM employee e
NATURAL JOIN department d;

SELECT product_id,
product_name,
department_id,
department_name
FROM product
NATURAL JOIN department;


/* CARTESIAN / CROSS JOIN  */
SELECT employee_id, first_name, last_name
FROM employee;

SELECT department_id, department_name
FROM department;

SELECT employee_id, first_name, last_name,
department_name
FROM employee, department;

SELECT employee_id, first_name, last_name,
department_name
FROM employee 
CROSS JOIN department;

/* SELF JOIN */
SELECT emp.employee_id,
emp.first_name,
emp.last_name,
emp.manager_id,
mgr.first_name,
mgr.last_name
FROM employee emp
LEFT JOIN employee mgr ON emp.manager_id = emp.manager_id;

/* Joining Multiple tables */
SELECT 
c.customer_id,
c.first_name,
c.last_name,
c.address_state,
co.order_id,
co.order_date,
p.product_name,
p.price
FROM customer c
JOIN customer_order co ON c.customer_id = co.customer_id 
JOIN product p ON co.product_id = p.product_id
ORDER BY co.order_id ;


SELECT 
c.customer_id,
c.first_name,
c.last_name,
c.address_state,
co.order_id,
co.order_date,
p.product_name,
p.price
FROM customer c
LEFT JOIN customer_order co ON c.customer_id = co.customer_id 
LEFT JOIN product p ON co.product_id = p.product_id
LEFT JOIN department d ON p.department_id = d.department_id
ORDER BY c.customer_id ;


SELECT order_id,
customer_id,
order_id,
order_date
FROM customer_order;

SELECT *
FROM product;

/* ALternative JOIN syntax */
SELECT employee_id,
first_name,
last_name,
department_name
FROM employee, department
WHERE employee.department_id = department.department_id;

/* employee.department_id = department.department_id(+) LEFT OUTER JOIN*/
/* employee.department_id (+)= department.department_id RIGHT OUTER JOIN*/
/* employee.department_id(+) = department.department_id(+) */

SELECT employee_id,
first_name,
last_name,
department_name,
salary,
hire_date
FROM employee, department
WHERE salary > 50000
AND hire_date > '01-01-2012'
AND employee.department_id = department.department_id;





/* STRING FUNCTIONS */
SELECT customer_id,
first_name,
last_name,
email_address,
INSTR(email_address, '@' )
FROM customer;



