-- find all address_id of addresses in the city of Dundee
-- use INNER JOIN FROM address on to city
SELECT address_id FROM address a INNER JOIN city c ON a.city_id = c.city_id WHERE c.city = 'Dundee'