ALTER TABLE routes ADD COLUMN terrain_type_id INT REFERENCES terrain_types(id);
