INSERT INTO routes (start_city_id, end_city_id, distance, duration)
VALUES
  (1, 2, 154, '1.9 hours'),
  (1, 3, 220, '2.5 hours'),
  (1, 4, 60, '1 hour'),
  (2, 4, 187, '2 hours'),
  (2, 6, 114, '1.5 hours'),
  (3, 5, 100, '1.2 hours'),
  (4, 3, 253, '2.5 hours'),
  (4, 6, 103, '1 hour'),
  (5, 1, 315, '3.4 hours'),
  (5, 4, 275, '4.5 hours'),
  (6, 5, 267, '3 hours');

INSERT INTO cities (name, country)
VALUES
  ('Timisoara', 'Timis'),
  ('Deva', 'Hunedoara'),
  ('Alba Iulia', 'Alba'),
  ('Arad', 'Arad'),
  ('Cluj-Napoca', 'Cluj'),
  ('Lugoj', 'Timis');

INSERT INTO terrain_types (name)
VALUES
  ('Mountainous'),
  ('Coastal'),
  ('Urban');

INSERT INTO routes (start_city_id, end_city_id, distance, duration, terrain_type_id)
VALUES
  (1, 2, 50.5, '3 hours', 1); -- The terrain type ID 1 represents "Mountainous"
