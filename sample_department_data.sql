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
  department_id int(5),
  department_name VARCHAR(100),
  CONSTRAINT pk_dept PRIMARY KEY (department_id)
);


CREATE TABLE employee (
  employee_id int(5),
  first_name VARCHAR(100),
  last_name VARCHAR(100),
  salary int(8),
  department_id int(5),
  manager_id int(5),
  hire_date DATE,
  CONSTRAINT pk_emp PRIMARY KEY (employee_id),
  CONSTRAINT fk_emp_dept FOREIGN KEY (department_id) REFERENCES department(department_id)
);


CREATE TABLE product (
  product_id int(5),
  product_name VARCHAR(100),
  price decimal(10, 2),
  department_id int(5),
  CONSTRAINT pk_prod PRIMARY KEY (product_id),
  CONSTRAINT fk_prod_dept FOREIGN KEY (department_id) REFERENCES department(department_id)
);

CREATE TABLE customer (
  customer_id int(5),
  first_name VARCHAR(100),
  last_name VARCHAR(100),
  address_state VARCHAR(10),
  email_address VARCHAR(350),
  CONSTRAINT pk_cust PRIMARY KEY (customer_id)
);

CREATE TABLE customer_order (
  order_id int(5),
  customer_id int(5),
  product_id int(5),
  order_date DATE,
  CONSTRAINT pk_order PRIMARY KEY (order_id),
  CONSTRAINT fk_order_cust FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
  CONSTRAINT fk_order_prod FOREIGN KEY (product_id) REFERENCES product(product_id)
);


/*
Sample data
*/

/*Department*/
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
INSERT INTO employee (employee_id, first_name, last_name, salary, department_id, manager_id, hire_date) VALUES (1, 'Michelle', 'Foster', 48000, 8, 162, TO_DATE('27-AUG-2011','DD-MON-YYYY', 'NLS_DATE_LANGUAGE = american'));
INSERT INTO employee (employee_id, first_name, last_name, salary, department_id, manager_id, hire_date) VALUES (2, 'Cheryl', 'Turner', 79000, 3, 99, TO_DATE('2-JAN-2012','DD-MON-YYYY', 'NLS_DATE_LANGUAGE = american'));
INSERT INTO employee (employee_id, first_name, last_name, salary, department_id, manager_id, hire_date) VALUES (3, 'Carolyn', 'Hudson', 47000, 7, 199, TO_DATE('4-DEC-2016','DD-MON-YYYY', 'NLS_DATE_LANGUAGE = american'));
INSERT INTO employee (employee_id, first_name, last_name, salary, department_id, manager_id, hire_date) VALUES (4, 'Patrick', 'Berry', 51000, 3, 159, TO_DATE('12-OCT-2011','DD-MON-YYYY', 'NLS_DATE_LANGUAGE = american'));
INSERT INTO employee (employee_id, first_name, last_name, salary, department_id, manager_id, hire_date) VALUES (5, 'Doris', 'Powell', 117000, 1, NULL, TO_DATE('15-NOV-2011','DD-MON-YYYY', 'NLS_DATE_LANGUAGE = american'));
INSERT INTO employee (employee_id, first_name, last_name, salary, department_id, manager_id, hire_date) VALUES (6, 'Jessica', 'Elliott', 21000, 7, 70, TO_DATE('2-JUL-2010','DD-MON-YYYY', 'NLS_DATE_LANGUAGE = american'));
INSERT INTO employee (employee_id, first_name, last_name, salary, department_id, manager_id, hire_date) VALUES (7, 'Sean', 'Burns', 51000, 6, 37, TO_DATE('3-OCT-2010','DD-MON-YYYY', 'NLS_DATE_LANGUAGE = american'));
INSERT INTO employee (employee_id, first_name, last_name, salary, department_id, manager_id, hire_date) VALUES (8, 'Ann', 'Bowman', 34000, 7, 187, TO_DATE('20-MAY-2010','DD-MON-YYYY', 'NLS_DATE_LANGUAGE = american'));
INSERT INTO employee (employee_id, first_name, last_name, salary, department_id, manager_id, hire_date) VALUES (9, 'Kathleen', 'Jones', 92000, 7, 131, TO_DATE('15-MAR-2015','DD-MON-YYYY', 'NLS_DATE_LANGUAGE = american'));
INSERT INTO employee (employee_id, first_name, last_name, salary, department_id, manager_id, hire_date) VALUES (10, 'Scott', 'Cruz', 32000, 8, 170, TO_DATE('3-JUL-2014','DD-MON-YYYY', 'NLS_DATE_LANGUAGE = american'));
INSERT INTO employee (employee_id, first_name, last_name, salary, department_id, manager_id, hire_date) VALUES (11, 'Norma', 'Henry', 56000, 3, 8, TO_DATE('24-JUL-2013','DD-MON-YYYY', 'NLS_DATE_LANGUAGE = american'));
INSERT INTO employee (employee_id, first_name, last_name, salary, department_id, manager_id, hire_date) VALUES (12, 'Evelyn', 'Gonzalez', 118000, 5, 177, TO_DATE('13-JUL-2013','DD-MON-YYYY', 'NLS_DATE_LANGUAGE = american'));
INSERT INTO employee (employee_id, first_name, last_name, salary, department_id, manager_id, hire_date) VALUES (13, 'Stephen', 'Hudson', 63000, 4, 133, TO_DATE('22-DEC-2016','DD-MON-YYYY', 'NLS_DATE_LANGUAGE = american'));


/*Product*/
INSERT INTO product (product_id, product_name, price, department_id) VALUES (1, 'Monitor', 149.95, 4);
INSERT INTO product (product_id, product_name, price, department_id) VALUES (2, 'Desk', 110.9, 4);
INSERT INTO product (product_id, product_name, price, department_id) VALUES (3, 'Chair', 79.95, 4);
INSERT INTO product (product_id, product_name, price, department_id) VALUES (4, 'Accounting Plus', 60.45, 5);
INSERT INTO product (product_id, product_name, price, department_id) VALUES (5, 'Microsoft Office', 121.15, 5);
INSERT INTO product (product_id, product_name, price, department_id) VALUES (6, 'Antivirus Extreme', 48.5, 5);
INSERT INTO product (product_id, product_name, price, department_id) VALUES (7, 'Photo Editing Pro', 250, 5);
INSERT INTO product (product_id, product_name, price, department_id) VALUES (8, 'Web Tools 4', 202.5, 5);



/*Customer*/
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
INSERT INTO customer_order (order_id, customer_id, product_id, order_date) VALUES (1, 3, 2, TO_DATE('18-DEC-2016','DD-MON-YYYY', 'NLS_DATE_LANGUAGE = american'));
INSERT INTO customer_order (order_id, customer_id, product_id, order_date) VALUES (2, 5, 6, TO_DATE('1-JUN-2015','DD-MON-YYYY', 'NLS_DATE_LANGUAGE = american'));
INSERT INTO customer_order (order_id, customer_id, product_id, order_date) VALUES (3, 6, 5, TO_DATE('26-SEP-2016','DD-MON-YYYY', 'NLS_DATE_LANGUAGE = american'));
INSERT INTO customer_order (order_id, customer_id, product_id, order_date) VALUES (4, 9, 1, TO_DATE('8-SEP-2015','DD-MON-YYYY', 'NLS_DATE_LANGUAGE = american'));
INSERT INTO customer_order (order_id, customer_id, product_id, order_date) VALUES (5, 7, 2, TO_DATE('13-APR-2016','DD-MON-YYYY', 'NLS_DATE_LANGUAGE = american'));
INSERT INTO customer_order (order_id, customer_id, product_id, order_date) VALUES (6, 5, 7, TO_DATE('4-FEB-2015','DD-MON-YYYY', 'NLS_DATE_LANGUAGE = american'));
INSERT INTO customer_order (order_id, customer_id, product_id, order_date) VALUES (7, 9, 7, TO_DATE('11-APR-2016','DD-MON-YYYY', 'NLS_DATE_LANGUAGE = american'));
INSERT INTO customer_order (order_id, customer_id, product_id, order_date) VALUES (8, 6, 8, TO_DATE('27-JUN-2015','DD-MON-YYYY', 'NLS_DATE_LANGUAGE = american'));
INSERT INTO customer_order (order_id, customer_id, product_id, order_date) VALUES (9, 2, 7, TO_DATE('23-JAN-2017','DD-MON-YYYY', 'NLS_DATE_LANGUAGE = american'));
INSERT INTO customer_order (order_id, customer_id, product_id, order_date) VALUES (10, 8, 7, TO_DATE('7-NOV-2015','DD-MON-YYYY', 'NLS_DATE_LANGUAGE = american'));
INSERT INTO customer_order (order_id, customer_id, product_id, order_date) VALUES (11, 2, 2, TO_DATE('9-JUN-2016','DD-MON-YYYY', 'NLS_DATE_LANGUAGE = american'));
INSERT INTO customer_order (order_id, customer_id, product_id, order_date) VALUES (12, 9, 7, TO_DATE('4-JAN-2015','DD-MON-YYYY', 'NLS_DATE_LANGUAGE = american'));
INSERT INTO customer_order (order_id, customer_id, product_id, order_date) VALUES (13, 5, 5, TO_DATE('22-APR-2015','DD-MON-YYYY', 'NLS_DATE_LANGUAGE = american'));
INSERT INTO customer_order (order_id, customer_id, product_id, order_date) VALUES (14, 9, 2, TO_DATE('14-SEP-2016','DD-MON-YYYY', 'NLS_DATE_LANGUAGE = american'));
INSERT INTO customer_order (order_id, customer_id, product_id, order_date) VALUES (15, 7, 1, TO_DATE('7-DEC-2015','DD-MON-YYYY', 'NLS_DATE_LANGUAGE = american'));
INSERT INTO customer_order (order_id, customer_id, product_id, order_date) VALUES (16, 5, 4, TO_DATE('17-OCT-2015','DD-MON-YYYY', 'NLS_DATE_LANGUAGE = american'));
INSERT INTO customer_order (order_id, customer_id, product_id, order_date) VALUES (17, 9, 6, TO_DATE('14-MAR-2015','DD-MON-YYYY', 'NLS_DATE_LANGUAGE = american'));


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
Select employee_id, first_name
FROM employee
WHERE last_name LIKE 'Bu%' ;

Select employee_id, first_name
FROM employee
WHERE last_name LIKE '%e%' ;

Select employee_id, first_name
FROM employee
WHERE first_name LIKE 'An_' ;



/*Filtering on Date values ' ', use function */
Select *
FROM employee
WHERE hire_date = '03-OCT-2010' ;

/* need to display date formate*/
Select value
FROM SYS.NLS_DATABASE_PARAMETERS
WHERE parameter = 'NLS_DATE_FORMAT' ;

Select *
FROM employee
WHERE hire_date < '01-OCT-2010' ;


/* multiple filters - AND, OR,  */
Select employee_id, first_name, last_name, salary, department_id, hire_date
FROM employee
WHERE first_name = 'John' AND last_name = 'Hayes' ;

Select employee_id, first_name, last_name, salary, department_id, hire_date
FROM employee
WHERE first_name = 'Justin' OR last_name = 'Foster' ;


Select employee_id, first_name, last_name, salary, department_id, hire_date
FROM employee
WHERE first_name = 'Barbara' 
AND (hire_date < '01-DEC-2014'
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
WHERE hire_date BETWEEN '01-JAN-2016' AND '31-DEC-2016';

Select employee_id, first_name, last_name, salary, hire_date
FROM employee 
WHERE employee_id BETWEEN 10 AND 10;

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
Select employee_id, first_name, last_name, salary
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



