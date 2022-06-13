-- find all customers first_name, last_name, address, and city
-- Similar to exercise 3 but with customer, address, city

 SELECT cu.first_name, cu.last_name, a.address, ci.city
 FROM customer cu LEFT JOIN address a ON cu.address_id = a.address_id
 LEFT JOIN city ci ON ci.city_id = a.city_id