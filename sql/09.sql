/*
 * Count the number of movies that contain each type of special feature.
 * Order the results alphabetically be the special_feature.
 */
 SELECT features as special_features, count(*) FROM (select unnest(special_features) as features FROM film) t group by special_features order by special_features;
