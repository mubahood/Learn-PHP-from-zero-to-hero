-- Cretae database SQL
CREATE DATABASE practice;

-- How to create a table
CREATE TABLE users(
    id int,
    name Varchar(255),
    age int,
    country Varchar(255)
);

-- How to delete a table.
DROP TABLE users;

CREATE TABLE `practice`.`practice` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `age` INT NOT NULL,
    `sex` VARCHAR(20) NOT NULL,
    `country` VARCHAR(255) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB;


-- Insert data
INSERT INTO practice (name,age,sex,country) VALUES ('Muhindo Mubarak',45,'Male','Uganda');
INSERT INTO practice (name,age,sex,country) VALUES ('Bwambale Muhidin',34,'Male','Kenya');

INSERT INTO practice (name,age,sex,country) VALUES ('Dorian Robertson',11,'Female','Rwanda');
INSERT INTO practice (name,age,sex,country) VALUES ('Cynthia Woodward',43,'Female','Burundi');
INSERT INTO practice (name,age,sex,country) VALUES ('Neil Carey',16,'Male','Tanzania');
INSERT INTO practice (name,age,sex,country) VALUES ('Jill Velazquez',65,'Female','Tanzania');
INSERT INTO practice (name,age,sex,country) VALUES ('Leonard Sexton',26,'Male','Rwanda');
INSERT INTO practice (name,age,sex,country) VALUES ('Daisy Farrell',62,'Male','Rwanda');
INSERT INTO practice (name,age,sex,country) VALUES ('Audra Cox',23,'Female','Uganda');
INSERT INTO practice (name,age,sex,country) VALUES ('Kurtis Morrow',34,'Male','Kenya');
INSERT INTO practice (name,age,sex,country) VALUES ('Long Haas',26,'Male','Burundi');
INSERT INTO practice (name,age,sex,country) VALUES ('Rosa Mcguire',21,'Female','Burundi');
INSERT INTO practice (name,age,sex,country) VALUES ('Billy Jennings',44,'Male','Uganda');
INSERT INTO practice (name,age,sex,country) VALUES ('Luis Mcclain',24,'Male','Uganda');
INSERT INTO practice (name,age,sex,country) VALUES ('Jae Gross',24,'Male','Uganda');
INSERT INTO practice (name,age,sex,country) VALUES ('Stacey Taylor',33,'Female','Kenya');
INSERT INTO practice (name,age,sex,country) VALUES ('Dominick Wise',33,'Female','Kenya');
INSERT INTO practice (name,age,sex,country) VALUES ('Chrystal Campbell',30,'Female','Rwanda');

 

-- SELECT COMMAND
SELECT * FROM practice;
SELECT name,age FROM practice;

SELECT * FROM practice WHERE id = 4;
SELECT * FROM practice WHERE name = 'Muhindo Mubarak';
SELECT * FROM practice WHERE age > 30;
SELECT * FROM practice WHERE age <= 20;
SELECT * FROM practice WHERE  age BETWEEN 20 AND 30;
SELECT * FROM practice WHERE name LIKE 'Ja%';
SELECT * FROM practice WHERE country LIKE '%a';
SELECT * FROM practice WHERE country LIKE '%a%';
SELECT * FROM practice WHERE country = 'Rwanda' AND age > 20 AND sex = 'Male';
SELECT * FROM practice WHERE country = 'Uganda' OR country = 'Kenya';
SELECT * FROM practice ORDER BY age ASC;
SELECT * FROM practice ORDER BY age DESC;
SELECT * FROM practice ORDER BY name ASC;


--update
UPDATE practice SET age = 30, country = 'Somalia' WHERE id = 1;

--delete
DELETE FROM practice WHERE id = 18;

--max
SELECT MAX(age) FROM practice;

--min
SELECT MIN(age) FROM practice;

--average
SELECT AVG(age) FROM practice;

SELECT * FROM practice WHERE age = (SELECT MAX(age) FROM practice);
SELECT * FROM practice WHERE age = (SELECT MIN(age) FROM practice);

--
CREATE TABLE `practice`.`products` ( `id` INT NOT NULL AUTO_INCREMENT , `name` VARCHAR(255) NOT NULL , `price` INT NOT NULL , `owner` INT NOT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB;


INSERT INTO products (name,price,owner) VALUES ('Rice',1200,1);
INSERT INTO products (name,price,owner) VALUES ('Sugar',1500,1);
INSERT INTO products (name,price,owner) VALUES ('Salt',1000,2);
INSERT INTO products (name,price,owner) VALUES ('Soap',1000,1);


SELECT * FROM products,practice WHERE products.owner = practice.id;