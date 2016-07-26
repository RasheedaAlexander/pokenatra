DROP TABLE IF EXISTS pokemons;
DROP TABLE IF EXISTS trainers;

CREATE TABLE trainers(
  id SERIAL PRIMARY KEY,
  name TEXT,
  level INT,
  img_url TEXT
);

CREATE TABLE pokemons(
  id SERIAL PRIMARY KEY,
  name TEXT,
  img_url TEXT,
  cp INT,
  poke_type TEXT,
  trainer_id INT
);
