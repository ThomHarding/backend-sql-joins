-- find all rental dates for customers with the first_name Patricia
-- use INNER JOIN FROM customer onto rental

SELECT r.rental_date FROM customer c INNER JOIN rental r ON c.customer_id = r.customer_id WHERE c.first_name = 'Patricia';