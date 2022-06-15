-- find all film titles rented out by customers who live in the country of Peru
-- Similar to exercise 7 with an additional join to get country name

 SELECT f.title
 FROM film f LEFT JOIN inventory i ON i.film_id = f.film_id
 LEFT JOIN rental r ON i.inventory_id = r.inventory_id
 LEFT JOIN customer cu ON r.customer_id = cu.customer_id
 LEFT JOIN address a ON a.address_id = cu.address_id
 LEFT JOIN city ci ON a.city_id = ci.city_id
 LEFT JOIN country co ON co.country_id = ci.country_id
 WHERE co.country = 'Peru'