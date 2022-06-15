-- find all film titles that an actor with the last_name Davis appears in
-- Similar to exercise 3 but with actor, film_actor, film

 SELECT f.title
 FROM film f LEFT JOIN film_actor fc ON f.film_id = fc.film_id
 LEFT JOIN actor a ON a.actor_id = fc.actor_id
 WHERE a.last_name = 'Davis'