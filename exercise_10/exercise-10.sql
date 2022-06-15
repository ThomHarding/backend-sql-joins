-- find the category name of all inventory items that have never been rented
-- Similar to exercise 9 with an additonal join

 SELECT c.name
 FROM inventory i LEFT JOIN film f ON f.film_id = i.film_id
 LEFT JOIN rental r ON i.inventory_id = r.inventory_id
 LEFT JOIN film_category fc ON f.film_id = fc.film_id
 LEFT JOIN category c ON fc.category_id = c.category_id
 WHERE r.rental_id IS NULL