/*
 * This problem is the same as 07.sql,
 * but instead of using the NOT IN operator, you are to use a LEFT JOIN.
 */
SELECT DISTINCT title FROM film JOIN inventory USING (film_id) JOIN rental USING (inventory_id) JOIN customer USING (customer_id) JOIN address USING (address_id) JOIN city USING (city_id) LEFT JOIN country ON city.country_id = country.country_id and country.country='United States' GROUP BY title HAVING MAX(country) is NULL order by title;

