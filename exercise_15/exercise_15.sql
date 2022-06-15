-- the total run time of all inventory items if they were all played back to back

SELECT SUM(f.length)
FROM film f LEFT JOIN inventory i ON i.film_id = f.film_id
WHERE i.inventory_id IS NOT NULL