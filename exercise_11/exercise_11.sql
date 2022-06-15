-- find the title and count of the top 10 most rented films
-- use COUNT to count each row
-- GROUP BY the film_id
-- ORDER in descending order
-- LIMIT 10
 
 SELECT f.title, COUNT(f.film_id) as count
 FROM inventory i INNER JOIN film f ON f.film_id = i.film_id
 INNER JOIN rental r ON i.inventory_id = r.inventory_id
 GROUP BY f.title
 ORDER BY count desc
 LIMIT 10
