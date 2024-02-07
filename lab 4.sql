
#1. List the number of films per category.
USE SAKILA ;
SELECT category.name AS category_name, COUNT(film_category.film_id) AS number_of_films
FROM category
JOIN film_category 
ON category.category_id = film_category.category_id
GROUP BY category.category_id, category.name
ORDER BY number_of_films DESC;

#2. Retrieve the store ID, city, and country for each store.
SELECT * FROM city;
SELECT * FROM store;
SELECT * FROM country;
USE SAKILA ;

SELECT store.store_id, city.city, country.country
FROM store
JOIN address 
	ON store.address_id = address.address_id
JOIN city 
	ON address.city_id = city.city_id
JOIN country 
	ON city.country_id = country.country_id;
    
    #3 Calculate the total revenue
  SELECT SUM(amount) AS total_revenue
FROM payment;

#Determine the average running time of films for each category.
SELECT category.name AS category_name,ROUND(AVG(film.length), 2) AS average_running_time
FROM film
	JOIN film_category ON film.film_id = film_category.film_id
	JOIN category ON film_category.category_id = category.category_id

GROUP BY category.name;


  

