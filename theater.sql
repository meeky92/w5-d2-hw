-- create customer table
CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(50),
	customer_age INTEGER
);

SELECT*
FROM customer;

-- create ticket table
CREATE TABLE ticket(
	ticket_id SERIAL PRIMARY KEY,
	price NUMERIC(4,2),
	date_time TIMESTAMP DEFAULT current_timestamp,
	customer_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
	movie_id INTEGER NOT NULL,
	FOREIGN KEY(movie_id) REFERENCES movie(movie_id)
);

SELECT*
FROM ticket;

--create movie table
CREATE TABLE movie(
	movie_id SERIAL PRIMARY KEY,
	title VARCHAR(50),
	rating VARCHAR(20),
	description VARCHAR(100)
);

SELECT*
FROM movie;

-- tried to alter ticket table to add foreign key from movie but got errors. dropped both tables and made new ones.

