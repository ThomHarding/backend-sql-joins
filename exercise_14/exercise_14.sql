-- the average film length by category
-- include the category name and avg length

SELECT c.name, AVG(f.length) as avg
FROM film f LEFT JOIN film_category fc ON f.film_id = fc.film_id
LEFT JOIN category c ON fc.category_id = c.category_id
GROUP BY c.name