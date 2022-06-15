-- find the title and count of the top 10 most rented films
-- use COUNT to count each row
-- GROUP BY the film_id
-- ORDER in descending order
-- LIMIT 10
 
 SELECT f.title, COUNT(f.title) as count
 FROM inventory i LEFT JOIN film f ON f.film_id = i.film_id
 LEFT JOIN rental r ON i.inventory_id = r.inventory_id
 GROUP BY f.film_id
 ORDER BY count desc
 LIMIT 10
 