-- find all film titles with the category Action
-- use a LEFT JOIN FROM film onto film_category
-- use LEFT JOIN FROM film_category onto category
 SELECT f.title
 FROM film f LEFT JOIN film_category fc ON f.film_id = fc.film_id
 LEFT JOIN category c ON fc.category_id = c.category_id
 WHERE c.name = 'Action'