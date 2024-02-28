/*
 * List the name of all actors who have appeared in a movie that has the 'Behind the Scenes' special_feature
 */
SELECT distinct(first_name || ' ' || last_name) as "Actor Name" FROM (SELECT first_name, last_name, unnest(special_features) as feature FROM film JOIN film_actor USING (film_id) JOIN actor USING (actor_id)) t WHERE feature = 'Behind the Scenes' ORDER BY "Actor Name";
