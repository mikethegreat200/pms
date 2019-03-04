DROP TABLE IF EXISTS location;
DROP TABLE IF EXISTS sub_location;

CREATE TABLE location (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  location_name TEXT UNIQUE NOT NULL,
  no_of_males INTEGER NOT NULL,

  no_of_females INTEGER NOT NULL,
  total_no_of_residents INTEGER NOT NULL

);

CREATE TABLE sub_location (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  location_id INTEGER UNIQUE NOT NULL,
  location_name TEXT UNIQUE NOT NULL,
  no_of_males INTEGER NOT NULL,

  no_of_females INTEGER NOT NULL,
  total_no_of_residents INTEGER NOT NULL,
  
  FOREIGN KEY (location_id) REFERENCES location (id)
);