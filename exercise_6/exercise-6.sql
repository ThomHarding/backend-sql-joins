-- find all film titles rented out by customers with the first_name Roberta
-- Similar to exercise 5

 SELECT f.title
 FROM film f LEFT JOIN inventory i ON i.film_id = f.film_id
 LEFT JOIN rental r ON i.inventory_id = r.inventory_id
 LEFT JOIN customer c ON r.customer_id = c.customer_id
 WHERE c.first_name = 'Roberta'