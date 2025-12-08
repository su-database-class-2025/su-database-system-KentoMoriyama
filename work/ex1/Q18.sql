SELECT DISTINCT country.country, SUM(payment.amount), COUNT(country.country)
FROM payment 
LEFT OUTER JOIN customer ON payment.customer_id = customer.customer_id
LEFT OUTER JOIN address ON customer.address_id = address.address_id
LEFT OUTER JOIN city ON address.city_id = city.city_id
FULL OUTER JOIN country ON city.country_id = country.country_id
GROUP BY country.country
ORDER BY country.country;
