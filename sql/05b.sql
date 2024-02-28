/*
 * This problem is the same as 05.sql,
 * but instead of using the NOT IN operator, you are to use a LEFT JOIN.
 */
SELECT last_name, first_name FROM actor LEFT JOIN customer USING (last_name, first_name) WHERE customer.last_name is NULL and customer.first_name is NULL ORDER BY last_name, first_name;

