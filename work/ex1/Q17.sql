SELECT rental_date, return_date, DATE_PART(year, rental_date)
FROM rental 
LEFT OUTER JOIN inventory ON rental.inventory_id = inventory.inventory_id 
LEFT OUTER JOIN film ON inventory.film_id = film.film_id 
LEFT OUTER JOIN film_category ON film.film_id = film_category.film_id
ORDER BY film_category.category_id;

SELECT DATEPART(year, '2025-11-11 15:30:20.05');

SELECT DATEPART(yyyy, '2025-11-11 15:30:20.05');