-- find all film titles rented out by customers who live in the city of Dundee
-- Similar to exercise 6 but you need a few more joins to get the city name

 SELECT f.title
 FROM film f LEFT JOIN inventory i ON i.film_id = f.film_id
 LEFT JOIN rental r ON i.inventory_id = r.inventory_id
 LEFT JOIN customer cu ON r.customer_id = cu.customer_id
 LEFT JOIN address a ON a.address_id = cu.address_id
 LEFT JOIN city ci ON a.city_id = ci.city_id
 WHERE ci.city = 'Dundee'