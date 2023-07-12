SELECT routes.id, cities.name AS start_city, cities.country AS start_country,
       end_cities.name AS end_city, end_cities.country AS end_country,
       routes.distance, routes.duration
FROM routes
JOIN cities ON routes.start_city_id = cities.id
JOIN cities AS end_cities ON routes.end_city_id = end_cities.id;
