-- DATABASE SETUP --

CREATE TABLE users(
id SERIAL PRIMARY KEY,
name VARCHAR(15) UNIQUE NOT NULL,
color VARCHAR(15)
);

CREATE TABLE visited_countries(
id SERIAL PRIMARY KEY,
country_code CHAR(2) NOT NULL,
user_id INTEGER REFERENCES users(id)
);

CREATE TABLE countries(
  id SERIAL PRIMARY KEY,
  country_code CHAR(2),
  country_name VARCHAR(100)
);
--Import data into countries from countries.csv--


INSERT INTO users (name, color)
VALUES ('Adarsh', 'teal'), ('Aditya', 'powderblue');

INSERT INTO visited_countries (country_code, user_id)
VALUES ('FR', 1), ('GB', 1), ('CA', 2), ('FR', 2 );

SELECT *
FROM visited_countries
JOIN users
ON users.id = user_id;