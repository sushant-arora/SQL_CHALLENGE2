SHOW DATABASES;

USE SAKILA;

SHOW TABLES;

#QUES1

SELECT * FROM actor;
DESCRIBE actor;
SELECT first_name, last_name FROM actor;

#QUES 2
SELECT last_name FROM actor WHERE first_name = 'John';

#QUES3
SELECT first_name, last_name FROM actor WHERE last_name = 'Neeson';

#Ques4

SELECT actor_id, first_name, last_name FROM actor WHERE actor_id LIKE '%_0';

#Ques 5

SELECT * FROM film;
DESCRIBE film;

SELECT title, description FROM film WHERE film_id ='100';

#QUES6
SELECT title,rating FROM film WHERE rating ='R';

#QUES7
SELECT title,rating FROM film WHERE rating !='R';

#Ques 8

SELECT title, length FROM film ORDER BY length ASC LIMIT 10;

#QUES 10

SELECT title, special_features FROM film WHERE special_features LIKE '%Deleted%';


#QUES11
SELECT * FROM actor;
DESCRIBE actor;

SELECT first_name, REVERSE(last_name) FROM actor GROUP BY last_name HAVING COUNT(last_name) = 1;


#QUES 12

SELECT last_name, COUNT(last_name) FROM actor GROUP BY last_name HAVING COUNT(last_name) > 1 ORDER BY COUNT(last_name) DESC;

#QUES 13
SELECT first_name, last_name, COUNT(fa
.actor_id) AS most_appearances FROM film_actor fa
JOIN actor a ON fa.actor_id=a.actor_id
GROUP BY fa.actor_id
ORDER BY most_appearances DESC
LIMIT 1;

#Ques14



#Ques 15

SELECT AVG (length) AS Avg_Runtime FROM film;

#Ques16

SELECT category_id, AVG(length) AS AvgRun_Category FROM film fa
JOIN film_category a ON fa.film_id=a.category_id
GROUP BY a.category_id
ORDER BY AvgRun_Category DESC;

#Ques17

SELECT title AS Robot_Movies FROM film WHERE description LIKE '%robot%';

#Ques 18

SELECT COUNT(title) AS 2010_Movies FROM film WHERE release_year = '2010';

#Ques 19
SELECT f.title, c.name AS category FROM film f
JOIN film_category fc ON f.film_id=fc.film_id
JOIN category c ON fc.category_id=c.category_id
WHERE c.name = 'Horror';


#Ques20

SELECT * FROM staff;
DESCRIBE staff;

SELECT first_name, last_name FROM staff WHERE staff_ID = '2';


#Ques 21

SELECT f.title AS FredCostner_Movies FROM film_actor fa
JOIN actor a ON a.actor_id=fa.actor_id
JOIN film f ON fa.film_id=f.film_id
WHERE first_name = 'Fred' AND last_name = 'Costner';

 

#Ques 22
SELECT DISTINCT COUNT(country) AS no_country FROM country;

 #Ques 23

SELECT name  FROM language ORDER BY name DESC;

#Quess24

SELECT first_name, last_name FROM actor WHERE last_name LIKE '%son' ORDER BY first_name ASC


#Q25

#Q25
SELECT c.name AS category, COUNT(f.title) AS no_films FROM film f
JOIN film_category fc ON f.film_id=fc.film_id
JOIN category c ON fc.category_id=c.category_id
GROUP BY c.name
ORDER BY no_films DESC
LIMIT 1;


