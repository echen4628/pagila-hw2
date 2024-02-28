/*
 * List the title of all movies that have both the 'Behind the Scenes' and the 'Trailers' special_feature
 *
 * HINT:
 * Create a select statement that lists the titles of all tables with the 'Behind the Scenes' special_feature.
 * Create a select statement that lists the titles of all tables with the 'Trailers' special_feature.
 * Inner join the queries above.
 */
SELECT distinct(title) FROM (SELECT title, unnest(special_features) as feature FROM film) as bts JOIN (SELECT title, unnest(special_features) as
feature FROM film) as t USING (title) WHERE bts.feature = 'Behind the Scenes' AND t.feature = 'Trailers' order by title;
