-- find the film title of all inventory items that have never been rented
-- LEFT JOIN FROM inventory to film and to rental
-- use WHERE IS NULL

 SELECT f.title
 FROM film f LEFT JOIN inventory i ON i.film_id = f.film_id
 LEFT JOIN rental r ON i.inventory_id = r.inventory_id
 WHERE r.rental_id IS NULL