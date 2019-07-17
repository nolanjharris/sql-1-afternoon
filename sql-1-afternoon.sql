-- TABLE - PERSON  ------------------------------------------------------------
--1.
CREATE TABLE person
(
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    height INT,
    city TEXT,
    favorite_color TEXT
);

--2.
INSERT INTO PERSON
    (name, age, height, city, favorite_color)
VALUES
    ('Nolan', 29, 200, 'Dallas', 'Blue'),
    ('John', 24, 160, 'Plano', 'Green'),
    ('Alex', 37, 185, 'Austin', 'Red');

--3.
SELECT *
FROM person
ORDER BY height DESC;

--4. 
SELECT *
FROM person
ORDER BY height ASC;

--5. 
SELECT *
FROM person
ORDER BY age DESC;

--6. 
SELECT *
FROM person
WHERE age > 20;

--7. 
SELECT *
FROM person
WHERE age = 18;

--8. 
SELECT *
FROM person
WHERE age < 20 OR age > 30;

--9. 
SELECT *
FROM person
WHERE age != 27;

--10.
SELECT *
FROM person
WHERE favorite_color != 'Red';

--11. 
SELECT *
FROM person
WHERE favorite_color NOT IN ('Red', 'Blue');

--12.
SELECT *
FROM person
WHERE favorite_color IN ('Orange', 'Green');

--13.
SELECT *
FROM person
WHERE favorite_color IN ('Orange', 'Green', 'Blue');

--14.
SELECT *
FROM person
WHERE favorite_color IN ('Yellow', 'Purple');


--TABLE - ORDERS  ----------------------------------------------------------------
--1. 
CREATE TABLE orders
(
    order_id SERIAL PRIMARY KEY,
    person_id INT,
    product_name VARCHAR(150),
    product_price NUMERIC,
    quantity INT
);

--2. 
INSERT INTO orders
    (person_id, product_name, product_price, quantity)
VALUES
    (1, 'Monster Energy Drink', 2.75, 4),
    (2, 'Chicken Express', 7.55, 1),
    (2, 'Protien Powder', 15.00, 2),
    (1, 'Lonestar 6pk', 9.00, 9),
    (3, 'Buckeys Watermelon Taffee', 3.25, 2);

--3. 
SELECT *
FROM orders;

--4. 
SELECT sum(quantity)
FROM orders;

--5. 
SELECT sum(product_price *quantity)
FROM orders;

--6. 
SELECT sum(product_price*quantity)
FROM orders
WHERE person_id = 1;


--TABLE - ARTIST -----------------------------------------------------------------
--1. 
INSERT INTO artist
    (name)
VALUES
    ('Tupac'),
    ('Biggie'),
    ('Hopsin');

--2.
SELECT *
FROM artist
ORDER BY name DESC LIMIT 10;

--3.
SELECT * FROM artist
ORDER BY name ASC LIMIT 5;

--4.
SELECT *
FROM artist
WHERE name LIKE 'Black%';

--5. 
SELECT *
FROM artist
WHERE name
LIKE '%Black%';


--TABLE -- EMPLOYEE  -----------------------------------------------------------------
--1. 
SELECT first_name, last_name
FROM employee
WHERE city = 'Calgary';

--2. 
SELECT MAX(birth_date)
from employee;

--3.
SELECT MIN(birth_date)
from employee;

--4.
SELECT *
from employee
WHERE reports_to = 2;

--5.
SELECT COUNT(*)
from employee
WHERE city = 'Lethbridge';


-- TABLE - INVOICE  --------------------------------------------------------------
--1.
SELECT COUNT(*)
FROM invoice
WHERE billing_country = 'USA';

--2. 
SELECT MAX(total)
FROM invoice;

--3. 
SELECT MIN(total)
FROM invoice;

--4. 
SELECT *
FROM invoice
WHERE total > 5;

--5.
SELECT COUNT(*)
FROM invoice
WHERE total < 5;

--6.
SELECT COUNT(*)
FROM invoice
WHERE billing_state in ('CA', 'TX', 'AZ');

--7.
SELECT AVG(total)
FROM invoice;

--8.
SELECT SUM(total)
FROM invoice;