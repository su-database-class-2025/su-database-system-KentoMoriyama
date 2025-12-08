SELECT film_category.category_id, SUM(payment.amount), COUNT(*) 
FROM rental 
LEFT OUTER JOIN payment ON rental.rental_id = payment.rental_id 
LEFT OUTER JOIN inventory ON rental.inventory_id = inventory.inventory_id 
LEFT OUTER JOIN film ON inventory.film_id = film.film_id 
LEFT OUTER JOIN film_category ON film.film_id = film_category.film_id
GROUP BY film_category.category_id
ORDER BY film_category.category_id;