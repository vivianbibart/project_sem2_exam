CREATE TABLE routes (
  id SERIAL PRIMARY KEY,
  start_city_id INT REFERENCES cities(id),
  end_city_id INT REFERENCES cities(id),
  distance FLOAT NOT NULL,
  duration INTERVAL NOT NULL,
  geom GEOMETRY(Linestring, 4326)
);
CREATE TABLE terrain_types (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  geom GEOMETRY(Polygon, 4326)
);
