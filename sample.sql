-- drop the table if it exists
DROP TABLE IF EXISTS "public"."cities" CASCADE;

-- create a table with a geography column
CREATE TABLE cities (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50),
  location GEOGRAPHY(POINT, 4326)
);

-- populate the table with some data
INSERT INTO cities (name, location) VALUES
  ('New York', ST_GeogFromText('POINT(-73.935242 40.730610)')),
  ('Los Angeles', ST_GeogFromText('POINT(-118.243683 34.052235)')),
  ('Chicago', ST_GeogFromText('POINT(-87.629798 41.878114)')),
  ('Houston', ST_GeogFromText('POINT(-95.369803 29.760427)')),
  ('Philadelphia', ST_GeogFromText('POINT(-75.165222 39.952584)'));
