-- the average rental amount by country
-- include the country name and avg amount
-- use AVG to average the amount

SELECT co.country, AVG(p.amount) as AVG
FROM country co LEFT JOIN city ci ON co.country_id = ci.country_id
LEFT JOIN address a ON ci.city_id = a.city_id
LEFT JOIN customer cu ON cu.address_id = a.address_id
LEFT JOIN rental r ON r.customer_id = cu.customer_id
LEFT JOIN payment p ON p.rental_id = r.rental_id
WHERE r.rental_id IS NOT NULL
GROUP BY co.country
ORDER BY AVG(p.amount) DESC
LIMIT 10