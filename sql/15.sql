/*
 * Compute the total revenue for each film.
 */
-- SELECT title, COALESCE(SUM(amount),0) as revenue FROM film LEFT JOIN inventory USING (film_id) LEFT JOIN rental USING (inventory_id) LEFT JOIN payment USING (rental_id) GROUP BY title;
SELECT title, CASE WHEN SUM(amount) is NULL THEN 0.00 ELSE SUM(amount) END as revenue FROM film LEFT JOIN inventory USING (film_id) LEFT JOIN rental USING (inventory_id) LEFT JOIN payment USING (rental_id) GROUP BY title ORDER BY revenue DESC;
