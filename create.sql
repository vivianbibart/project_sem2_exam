CREATE TABLE cities (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  country VARCHAR(255) NOT NULL
);
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

CREATE TABLE stop_points (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  description TEXT,
  latitude FLOAT NOT NULL,
  longitude FLOAT NOT NULL,
  route_id INT REFERENCES routes(id) ON DELETE CASCADE
);

CREATE TABLE bike_riders (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  age INT,
  gender VARCHAR(10),
  email VARCHAR(255) NOT NULL UNIQUE,
  phone VARCHAR(20)
);

CREATE TABLE route_difficulty (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  description TEXT
);

CREATE TABLE check_points (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  description TEXT,
  latitude FLOAT NOT NULL,
  longitude FLOAT NOT NULL,
  route_id INT REFERENCES routes(id)
);

CREATE TABLE route_images (
  id SERIAL PRIMARY KEY,
  route_id INT REFERENCES routes(id),
  image_url VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS cities (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  county VARCHAR(100) NOT NULL,
  geom GEOMETRY(Point, 4326)
);




