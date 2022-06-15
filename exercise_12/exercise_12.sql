-- the top 10 cities with the most total rental payment amount
-- include the city name and sum
-- use SUM to sum up the amounts

SELECT ci.city, SUM(p.amount) as sum
FROM city ci LEFT JOIN address a ON ci.city_id = a.city_id
LEFT JOIN customer cu ON cu.address_id = a.address_id
LEFT JOIN rental r ON r.customer_id = cu.customer_id
LEFT JOIN payment p ON p.rental_id = r.rental_id
WHERE r.rental_id IS NOT NULL
GROUP BY ci.city
ORDER BY sum desc
LIMIT 10